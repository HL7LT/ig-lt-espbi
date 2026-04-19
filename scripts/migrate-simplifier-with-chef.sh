#!/usr/bin/env bash
# Migrate ESPBI Simplifier JSON resources to FSH via TermX Chef (GoFSH).
#
# Walks a directory of FHIR JSON resources, classifies each by resourceType
# and StructureDefinition shape, and converts them in a fixed order:
#
#   1. terminology-cs  (CodeSystem)
#   2. terminology-vs  (ValueSet)
#   3. datatypes       (logical models, custom complex-type profiles)
#   4. extensions      (Extension profiles)
#   5. generic         (Patient, Practitioner, Organization, ... profiles)
#   6. dependent       (Observation, ServiceRequest, Condition, ... profiles)
#   7. compositions    (Composition, Bundle profiles)
#
# Conversion is delegated to a running TermX Chef instance (default:
# http://localhost:3000). If none is reachable, the script will try to
# start one via Docker using the termx-chef image (built from
# ~/source/termx/termx-chef if the image is missing).
#
# Output: one .fsh file per input, written to
#   $DEST_DIR/<bucket>/<id>.fsh
# and a markdown report at $LOG_FILE summarising results.
#
# The script does NOT rename resources to the repo's suffix convention,
# or wire up aliases — that is a separate manual pass after review.
#
# Usage:
#   scripts/migrate-simplifier-with-chef.sh [options]
# Options (all optional, may also be set via env vars of the same name):
#   --filter=BUCKET      run only one bucket (see list above) or 'all' (default)
#   --source=PATH        simplifier JSON root (default: ~/source/hl7lt/ig-lt-espbi/simplifier)
#   --dest=PATH          output dir (default: input/fsh/migrated)
#   --chef-url=URL       TermX Chef base URL (default: http://localhost:3000)
#   --chef-image=NAME    Docker image to run/build (default: termx-chef:latest)
#   --chef-source=PATH   Dockerfile source (default: ~/source/termx/termx-chef)
#   --log=PATH           markdown report path (default: migration.md)
#   --dry-run            classify + plan only, no HTTP calls, no file writes
#   -h | --help

set -euo pipefail

CHEF_URL="${CHEF_URL:-http://localhost:3000}"
CHEF_IMAGE="${CHEF_IMAGE:-termx-chef:latest}"
CHEF_SOURCE="${CHEF_SOURCE:-$HOME/source/termx/termx-chef}"
SOURCE_DIR="${SOURCE_DIR:-$HOME/source/hl7lt/ig-lt-espbi/simplifier}"
DEST_DIR="${DEST_DIR:-input/fsh/migrated}"
LOG_FILE="${LOG_FILE:-migration.md}"
FILTER="all"
DRY_RUN=0

BUCKETS=(terminology-cs terminology-vs datatypes extensions generic dependent compositions)

GENERIC_TYPES=(Patient Practitioner PractitionerRole Organization Location RelatedPerson HealthcareService Device Endpoint EpisodeOfCare Encounter)
COMPOSITION_TYPES=(Composition Bundle)

usage() { sed -n '2,/^$/p' "$0" | sed 's/^# \{0,1\}//'; exit "${1:-0}"; }

for arg in "$@"; do
  case "$arg" in
    --filter=*)      FILTER="${arg#*=}" ;;
    --source=*)      SOURCE_DIR="${arg#*=}" ;;
    --dest=*)        DEST_DIR="${arg#*=}" ;;
    --chef-url=*)    CHEF_URL="${arg#*=}" ;;
    --chef-image=*)  CHEF_IMAGE="${arg#*=}" ;;
    --chef-source=*) CHEF_SOURCE="${arg#*=}" ;;
    --log=*)         LOG_FILE="${arg#*=}" ;;
    --dry-run)       DRY_RUN=1 ;;
    -h|--help)       usage 0 ;;
    *) echo "unknown argument: $arg" >&2; usage 1 ;;
  esac
done

for cmd in jq curl; do
  command -v "$cmd" >/dev/null || { echo "required tool missing: $cmd" >&2; exit 2; }
done

[ -d "$SOURCE_DIR" ] || { echo "source dir not found: $SOURCE_DIR" >&2; exit 2; }

chef_ping() {
  curl -fsS -o /dev/null -X POST "$CHEF_URL/v2/fhir2fsh" \
    -H 'content-type: application/fhir+json' \
    --data-binary '{"resourceType":"CodeSystem","id":"ping","url":"http://example.org/ping","status":"draft","content":"complete"}' \
    >/dev/null 2>&1
}

ensure_chef() {
  if chef_ping; then
    echo "chef: reachable at $CHEF_URL"
    return
  fi
  command -v docker >/dev/null || { echo "chef not reachable and docker not installed" >&2; exit 3; }
  if ! docker image inspect "$CHEF_IMAGE" >/dev/null 2>&1; then
    [ -f "$CHEF_SOURCE/Dockerfile" ] || { echo "chef image missing and chef source not found at $CHEF_SOURCE" >&2; exit 3; }
    echo "chef: building image $CHEF_IMAGE from $CHEF_SOURCE ..."
    docker build -t "$CHEF_IMAGE" "$CHEF_SOURCE"
  fi
  docker rm -f termx-chef-migrate >/dev/null 2>&1 || true
  echo "chef: starting container termx-chef-migrate ..."
  docker run -d --rm -p 3000:3000 --name termx-chef-migrate "$CHEF_IMAGE" >/dev/null
  for _ in $(seq 1 30); do
    sleep 1
    chef_ping && { echo "chef: ready"; return; }
  done
  echo "chef: container did not become ready in 30s" >&2
  exit 3
}

classify() {
  local file="$1" rt kind type base
  rt=$(jq -r '.resourceType // ""' "$file" 2>/dev/null || true)
  case "$rt" in
    CodeSystem)          echo terminology-cs; return ;;
    ValueSet)            echo terminology-vs; return ;;
    StructureDefinition) ;;
    "")                  echo "skip:no-resourceType"; return ;;
    *)                   echo "skip:$rt"; return ;;
  esac
  kind=$(jq -r '.kind // ""' "$file")
  type=$(jq -r '.type // ""' "$file")
  base=$(jq -r '.baseDefinition // ""' "$file")
  if [ "$kind" = "logical" ]; then echo datatypes; return; fi
  if [ "$type" = "Extension" ] || [ "$base" = "http://hl7.org/fhir/StructureDefinition/Extension" ]; then
    echo extensions; return
  fi
  if [ "$kind" = "complex-type" ]; then echo datatypes; return; fi
  for t in "${COMPOSITION_TYPES[@]}"; do [ "$type" = "$t" ] && { echo compositions; return; }; done
  for t in "${GENERIC_TYPES[@]}"; do    [ "$type" = "$t" ] && { echo generic;      return; }; done
  echo dependent
}

resource_id() {
  jq -r '.id // .name // ""' "$1"
}

convert_one() {
  local file="$1" bucket="$2" id outdir outfile body status
  id=$(resource_id "$file")
  if [ -z "$id" ]; then
    printf '%s\tskip-no-id\t\n' "$file" >>"$RESULTS_TSV"
    return 1
  fi
  outdir="$DEST_DIR/$bucket"
  outfile="$outdir/${id}.fsh"
  if [ "$DRY_RUN" = 1 ]; then
    printf '%s\tdry-run\t%s\n' "$file" "$outfile" >>"$RESULTS_TSV"
    return 0
  fi
  mkdir -p "$outdir"
  body=$(mktemp)
  status=$(curl -sS -o "$body" -w '%{http_code}' \
    -X POST "$CHEF_URL/v2/fhir2fsh" \
    -H 'content-type: application/fhir+json' \
    --data-binary "@$file" || echo "000")
  if [ "$status" != "200" ]; then
    local err
    err=$(head -c 300 "$body" | tr -d '\n' | sed 's/\t/ /g')
    printf '%s\tfail-%s\t%s\n' "$file" "$status" "$err" >>"$RESULTS_TSV"
    rm -f "$body"
    return 1
  fi
  mv "$body" "$outfile"
  printf '%s\tok\t%s\n' "$file" "$outfile" >>"$RESULTS_TSV"
}

BUCKET_LIST_DIR=$(mktemp -d)
trap 'rm -rf "$BUCKET_LIST_DIR"' EXIT
for b in "${BUCKETS[@]}" skipped; do : >"$BUCKET_LIST_DIR/$b"; done

echo "scanning $SOURCE_DIR ..."
scanned=0
while IFS= read -r -d '' file; do
  scanned=$((scanned+1))
  cls=$(classify "$file")
  case "$cls" in
    skip:*) printf '%s\t%s\n' "$file" "${cls#skip:}" >>"$BUCKET_LIST_DIR/skipped" ;;
    *)      printf '%s\n' "$file" >>"$BUCKET_LIST_DIR/$cls" ;;
  esac
done < <(find "$SOURCE_DIR" -type f -name '*.json' -print0)
echo "scanned $scanned files"

RESULTS_TSV=$(mktemp)
trap 'rm -rf "$BUCKET_LIST_DIR"; rm -f "$RESULTS_TSV"' EXIT

[ "$DRY_RUN" = 1 ] || ensure_chef

for bucket in "${BUCKETS[@]}"; do
  [ "$FILTER" != "all" ] && [ "$FILTER" != "$bucket" ] && continue
  list="$BUCKET_LIST_DIR/$bucket"
  n=$(wc -l <"$list" | tr -d ' ')
  [ "$n" -eq 0 ] && continue
  echo "=== $bucket ($n files) ==="
  ok=0; fail=0
  while IFS= read -r file; do
    [ -z "$file" ] && continue
    if convert_one "$file" "$bucket"; then ok=$((ok+1)); else fail=$((fail+1)); fi
  done <"$list"
  echo "    ok=$ok fail=$fail"
done

# Write markdown report.
{
  echo "# ESPBI Simplifier → FSH migration"
  echo
  echo "_Generated by \`scripts/migrate-simplifier-with-chef.sh\` on $(date -u +%FT%TZ)._"
  echo
  echo "## Configuration"
  echo
  echo "| Key | Value |"
  echo "| --- | --- |"
  echo "| Source | \`$SOURCE_DIR\` |"
  echo "| Destination | \`$DEST_DIR\` |"
  echo "| Chef URL | \`$CHEF_URL\` |"
  echo "| Filter | \`$FILTER\` |"
  echo "| Dry run | \`$DRY_RUN\` |"
  echo
  echo "## Bucket counts (from scan)"
  echo
  echo "| Bucket | Files |"
  echo "| --- | ---: |"
  for bucket in "${BUCKETS[@]}" skipped; do
    n=$(wc -l <"$BUCKET_LIST_DIR/$bucket" | tr -d ' ')
    echo "| $bucket | $n |"
  done
  echo
  echo "## Per-file results"
  echo
  if [ ! -s "$RESULTS_TSV" ]; then
    echo "_No conversions attempted (filter or dry-run produced no work)._"
  else
    echo "| File | Status | Detail |"
    echo "| --- | --- | --- |"
    while IFS=$'\t' read -r file status detail; do
      # Trim the source-dir prefix for readability.
      rel="${file#$SOURCE_DIR/}"
      # Escape pipes in detail.
      detail=${detail//|/\\|}
      echo "| \`$rel\` | $status | $detail |"
    done <"$RESULTS_TSV"
  fi
  echo
  if [ -s "$BUCKET_LIST_DIR/skipped" ]; then
    echo "## Skipped files"
    echo
    echo "| File | Reason |"
    echo "| --- | --- |"
    while IFS=$'\t' read -r file reason; do
      rel="${file#$SOURCE_DIR/}"
      echo "| \`$rel\` | $reason |"
    done <"$BUCKET_LIST_DIR/skipped"
    echo
  fi
  echo "## Next steps"
  echo
  echo "1. Review the generated FSH under \`$DEST_DIR/\`. GoFSH output is close but rarely final — expect manual cleanup."
  echo "2. Rename resources to the suffix convention (\`{Business}Lt{Ig}\` / \`{business}-lt-{ig}\`) and wire up canonical URL aliases."
  echo "3. Move files from \`$DEST_DIR/\` into \`input/fsh/{terminology,profiles,examples}/\` as they are reviewed."
  echo "4. Re-run this script any time the Simplifier source changes."
} >"$LOG_FILE"

echo "wrote report: $LOG_FILE"
