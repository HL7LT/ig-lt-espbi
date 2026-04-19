# The copy of the ESPBI Implementation Guide

## Introduction and Purpose

This Implementation Guide is a copy of https://simplifier.net/espbi-is-fhir5. 

Its purpose is to enable:

* consistent and high-quality data capture across healthcare providers,

## Scope

That includes eLab and ESPBI resources

## Goal.

Adopt ESPBI resources to HL7 LT and EU EHDS resources.


## Key Modelling Principles

TODO

## Content of the Guide

This IG is being migrated from the current Simplifier `simplifier/` repository into FSH under `input/fsh`.
The initial migration is organized in phases to preserve the existing guidance while converting resources to canonical FSH notation.

## Migration Plan

### Phase 0: Planning and documentation

* Document the migration scope and resource dependencies.
* Establish the target folder layout under `input/fsh`.
* Confirm the guide can compile before and after the first migration increment.

### Phase 1: Initial FSH migration

* Convert current Simplifier profiles and base resources into FSH notation.
* Start with the eLAB laboratory profiles and core laboratory artifacts.
* Validate the IG build with SUSHI after each set of converted profiles.

### Phase 2: Migration design

* Define the full migration plan for remaining resources and profiles.
* Determine the folder structure for resources that originate from `simplifier/!Dokumentai`, `simplifier/!Resursai`, and `simplifier/eLAB`.
* Map any local extensions and code systems to FSH equivalents.

### Phase 3: Implementation

* Execute the migration plan across all resource categories.
* Remove legacy JSON artifacts once the FSH conversion is complete.
* Finalize documentation, examples, and IG narrative.

## Current Phase

Work in progress: Phase 0 and Phase 1.

* Initial migration scaffolding has been created under `input/fsh/eLAB`.
* First eLAB profiles have been represented in FSH.
* The IG build is being validated with SUSHI.

