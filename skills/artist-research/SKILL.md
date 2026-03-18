---
name: artist-research
description: Use when researching artists for A&R, label scouting, compilation outreach, lineup discovery, or scene mapping with verification, dedupe, scoring, and structured output
---

# Artist Research

Research artists like a practical A&R operator, not a playlist scraper.

Bias toward:

- strong stylistic fit
- reachable and useful contact paths
- underground credibility
- distinct identity
- practical outreach value

Do not pad results with weak fits just to increase count.

## When To Use

Use this skill when the user wants:

- artist prospecting
- A&R research
- outreach lists
- label compilation candidates
- remix or collab targets
- scene discovery by genre or region
- a scored shortlist in CSV, Markdown, JSON, Airtable-ready, or spreadsheet-ready form

Do not use it for:

- writing outreach copy only
- legal clearance analysis
- royalty or contract advice
- playlist pitching unless the task is still artist discovery

## Core Workflow

Always work in loops:

1. load existing context
2. discover candidates from seeds
3. verify each candidate
4. reject weak fits
5. score viable artists
6. dedupe
7. write the requested output

Repeat until the shortlist is strong.

## Step 1: Normalize Existing Lists

If the user provides a sheet, CSV, Airtable export, or artist list:

- extract artist names, handles, and links
- normalize for dedupe using lowercase comparison keys
- strip punctuation where useful
- normalize spacing
- track handle and alias variants

Keep an in-memory existing-artist set before adding new prospects.

## Step 2: Start From Seeds

Seed sources may include:

- artists provided by the user
- calibration artists
- an existing roster or spreadsheet
- labels, compilations, and event lineups in the same lane

From each promising seed, branch into:

- related artists
- reposts
- collaborators
- guest features
- tag and genre clusters
- track credits
- Instagram or Linktree links
- Bandcamp pages
- small collectives
- local scenes
- adjacent regional scenes

Do not rely on one-pass search. Branch out, then narrow back.

## Step 3: Verify Each Candidate

A candidate is only viable if you can support the row with public evidence.

For each candidate, verify:

- it is an actual artist, not a label, repost page, playlist, or blog
- the sonic fit is real, not cosmetic
- the main platform
- approximate audience size
- at least one public contact route
- whether management or representation is visible
- whether it already exists in the provided list

If critical facts are not verifiable, mark uncertainty explicitly or reject the candidate.

## Step 4: Reject Weak Fits

Deprioritize or reject:

- artists clearly above the requested size ceiling
- acts with no public contact route
- weak genre fit
- heavily represented acts when the user wants independent artists
- pages that are mostly reposts or playlists
- duplicate platform rows for the same artist

## Step 5: Score

Default scoring dimensions:

- sonic fit
- underground credibility
- outreach realism
- independence
- distinctiveness

Use a 0 to 10 scale per dimension unless the user specifies otherwise.

`score_total` should be the sum of those dimensions.

If the user asks for priority bands, use the requested rule set. Otherwise:

- `High`: strong fit, practical outreach path, no major blocker
- `Medium`: useful candidate with one meaningful uncertainty
- `Low`: weak fit, major blocker, or mostly speculative

## Step 6: Output Cleanly

Before writing the final output:

- merge exact duplicates
- merge obvious alias duplicates
- keep one row per artist, not one row per platform
- preserve source links
- keep all cells plain text if writing CSV

If the user requests a specific schema, follow it exactly.

If they do not, read `references/output-schema.md` and use that as the default.

## Source Discipline

Read `references/source-validation.md` when doing open-web verification.

Core rules:

- do not fabricate contact info
- do not hallucinate follower counts
- do not infer management unless there is public evidence
- use `unclear` when a field cannot be verified
- prefer primary artist pages over secondary mentions

## Scoring Discipline

Read `references/scoring-rubric.md` when turning evidence into scores.

Do not give every decent artist a high score. Preserve spread.

## Output Modes

This skill supports:

- CSV prospect sheets
- Markdown shortlist reports
- JSON exports
- spreadsheet-ready tables

If the user asks for a file on disk, write it and report the exact path actually written.

## Prompt Overlay Pattern

Treat the user prompt as an overlay on top of this base workflow:

- mission
- sonic target
- geography
- audience-size ceiling
- independence requirement
- contactability rule
- exclusions
- schema
- output path

This keeps the skill reusable across labels, managers, curators, and booking teams.
