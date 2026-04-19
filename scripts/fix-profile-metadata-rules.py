#!/usr/bin/env python3
"""Rewrite profile metadata rules in FSH files to their canonical form.

The FSH files under `input/fsh/{Dokumentai,Resursai,eLAB}` were produced by a
previous ad-hoc conversion and use malformed profile rules for metadata:

    * url        = "..."
    * name       = "..."
    * status     = "draft"
    * date       = "..."
    * publisher  = "..."

These are metadata on the StructureDefinition itself, not element rules, so
SUSHI rejects them. They belong under the caret (`^`) syntax and `status`
must be a code, not a string. Additionally, the `Id:` directive is often
filename-derived with an invalid `.structuredefinition` suffix and
embedded underscores.

This script performs the following mechanical rewrites on each FSH file:

    * url   = "X"           -> * ^url = "X"
    * name  = "X"           -> * ^name = "X"
    * status = "draft"      -> * ^status = #draft         (also active/retired/unknown)
    * date  = "X"           -> * ^date = "X"
    * publisher = "X"       -> * ^publisher = "X"
    * description = "X"     -> * ^description = "X"
    * version = "X"         -> * ^version = "X"
    * experimental = X      -> * ^experimental = X

    Id: foo.structuredefinition -> derived from * url's last path segment

Only files whose first non-blank line is `Profile:`, `Extension:`,
`Logical:`, `Resource:`, `CodeSystem:`, or `ValueSet:` are rewritten.
Alias/ruleset/invariant files are left untouched.

Usage: scripts/fix-profile-metadata-rules.py [--dry-run] [path ...]
       defaults to input/fsh when no paths are given.
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path


META_FIELDS_STRING = [
    "url",
    "name",
    "title",  # already a directive in FSH, but tolerate rule-form too
    "date",
    "publisher",
    "description",
    "version",
    "experimental",
]

STATUS_VALUES = {"draft", "active", "retired", "unknown"}

RESOURCE_HEADERS = (
    "Profile:",
    "Extension:",
    "Logical:",
    "Resource:",
    "CodeSystem:",
    "ValueSet:",
    "Instance:",
)

URL_RULE = re.compile(r'^\*\s+url\s*=\s*"([^"]+)"\s*$')
NAME_RULE = re.compile(r'^\*\s+name\s*=\s*"([^"]+)"\s*$')
STATUS_RULE = re.compile(r'^\*\s+status\s*=\s*"([^"]+)"\s*$')
DATE_RULE = re.compile(r'^\*\s+date\s*=\s*"([^"]+)"\s*$')
PUBLISHER_RULE = re.compile(r'^\*\s+publisher\s*=\s*"([^"]+)"\s*$')
DESCRIPTION_RULE = re.compile(r'^\*\s+description\s*=\s*"([^"]+)"\s*$')
VERSION_RULE = re.compile(r'^\*\s+version\s*=\s*"([^"]+)"\s*$')
EXPERIMENTAL_RULE = re.compile(r'^\*\s+experimental\s*=\s*(true|false)\s*$')

ID_DIRECTIVE = re.compile(r'^Id:\s*(\S+)\s*$')


def is_resource_file(lines: list[str]) -> bool:
    for raw in lines:
        stripped = raw.strip()
        if not stripped or stripped.startswith("//"):
            continue
        return stripped.startswith(RESOURCE_HEADERS)
    return False


def id_from_url(url: str) -> str | None:
    """Last path segment of a canonical URL, or None."""
    tail = url.rstrip("/").rsplit("/", 1)[-1]
    if not tail:
        return None
    # FHIR id chars: [A-Za-z0-9\-\.], up to 64.
    if re.fullmatch(r"[A-Za-z0-9\-\.]{1,64}", tail):
        return tail
    return None


def sanitise_id(raw: str) -> str | None:
    """Turn a filename-derived id into a valid FHIR id.

    Drops a trailing `.structuredefinition` / `.codesystem` / `.valueset`
    suffix and replaces underscores with hyphens. Returns None if the
    result is still invalid.
    """
    value = raw
    for suffix in (".structuredefinition", ".codesystem", ".valueset"):
        if value.lower().endswith(suffix):
            value = value[: -len(suffix)]
    value = value.replace("_", "-")
    if re.fullmatch(r"[A-Za-z0-9\-\.]{1,64}", value):
        return value
    return None


def rewrite(text: str) -> tuple[str, dict[str, int]]:
    """Return (new_text, counts_of_each_fix)."""
    lines = text.splitlines(keepends=True)
    if not is_resource_file(lines):
        return text, {}

    # Pass 1: find an explicit URL (so we can derive a better Id if needed).
    url_value: str | None = None
    for raw in lines:
        m = URL_RULE.match(raw.rstrip("\r\n"))
        if m:
            url_value = m.group(1)
            break

    counts: dict[str, int] = {}
    out: list[str] = []

    for raw in lines:
        stripped = raw.rstrip("\r\n")
        eol = raw[len(stripped):]

        new = stripped

        if URL_RULE.match(stripped):
            new = f'* ^url = "{URL_RULE.match(stripped).group(1)}"'
            counts["url"] = counts.get("url", 0) + 1
        elif NAME_RULE.match(stripped):
            new = f'* ^name = "{NAME_RULE.match(stripped).group(1)}"'
            counts["name"] = counts.get("name", 0) + 1
        elif STATUS_RULE.match(stripped):
            val = STATUS_RULE.match(stripped).group(1)
            if val in STATUS_VALUES:
                new = f'* ^status = #{val}'
            else:
                new = f'* ^status = "{val}"'
            counts["status"] = counts.get("status", 0) + 1
        elif DATE_RULE.match(stripped):
            new = f'* ^date = "{DATE_RULE.match(stripped).group(1)}"'
            counts["date"] = counts.get("date", 0) + 1
        elif PUBLISHER_RULE.match(stripped):
            new = f'* ^publisher = "{PUBLISHER_RULE.match(stripped).group(1)}"'
            counts["publisher"] = counts.get("publisher", 0) + 1
        elif DESCRIPTION_RULE.match(stripped):
            new = f'* ^description = "{DESCRIPTION_RULE.match(stripped).group(1)}"'
            counts["description"] = counts.get("description", 0) + 1
        elif VERSION_RULE.match(stripped):
            new = f'* ^version = "{VERSION_RULE.match(stripped).group(1)}"'
            counts["version"] = counts.get("version", 0) + 1
        elif EXPERIMENTAL_RULE.match(stripped):
            new = f'* ^experimental = {EXPERIMENTAL_RULE.match(stripped).group(1)}'
            counts["experimental"] = counts.get("experimental", 0) + 1
        else:
            m = ID_DIRECTIVE.match(stripped)
            if m:
                current_id = m.group(1)
                needs_fix = (
                    current_id.lower().endswith(".structuredefinition")
                    or current_id.lower().endswith(".codesystem")
                    or current_id.lower().endswith(".valueset")
                    or "_" in current_id
                    or not re.fullmatch(r"[A-Za-z0-9\-\.]{1,64}", current_id)
                )
                if needs_fix:
                    candidate: str | None = None
                    if url_value is not None:
                        candidate = id_from_url(url_value)
                    if candidate is None:
                        candidate = sanitise_id(current_id)
                    if candidate is not None and candidate != current_id:
                        new = f"Id: {candidate}"
                        counts["id"] = counts.get("id", 0) + 1

        out.append(new + eol)

    return "".join(out), counts


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--dry-run", action="store_true")
    p.add_argument("paths", nargs="*", default=["input/fsh"])
    args = p.parse_args()

    totals: dict[str, int] = {}
    files_touched = 0
    files_scanned = 0

    for root in args.paths:
        for fsh in Path(root).rglob("*.fsh"):
            # Skip migration output — it has its own issues tracked separately.
            if "migrated" in fsh.parts:
                continue
            files_scanned += 1
            text = fsh.read_text(encoding="utf-8")
            new_text, counts = rewrite(text)
            if counts:
                files_touched += 1
                for k, v in counts.items():
                    totals[k] = totals.get(k, 0) + v
                if not args.dry_run:
                    fsh.write_text(new_text, encoding="utf-8")

    print(f"scanned {files_scanned} files, rewrote {files_touched}")
    for k in sorted(totals):
        print(f"  {k:12s} {totals[k]}")
    if args.dry_run:
        print("(dry-run — no files written)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
