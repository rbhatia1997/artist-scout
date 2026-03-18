# artist-scout

Open-source AI A&R toolkit for artist scouting, shortlist building, and outreach prep.

`artist-scout` is built for:

- record labels
- artist managers
- curators
- promoters
- independent teams doing manual A&R

It helps turn messy artist discovery into a repeatable workflow:

1. find artists
2. verify fit
3. capture contact paths
4. score and rank prospects
5. prep outreach

This repo is not tied to one label. You bring the taste profile, scene, market, and release brief. The workflow stays reusable.

## What It Does

- researches artists for compilations, remixes, features, and lineups
- builds structured shortlists with evidence and source links
- flags contact routes and representation status
- scores prospects by fit, credibility, realism, independence, and distinctiveness
- prepares first-contact outreach without sounding mass-sent

## Who It Is For

Use this if you want a more disciplined version of:

- late-night SoundCloud rabbit holes
- scattered notes in DMs and spreadsheets
- inconsistent scouting criteria across releases
- weak handoff from discovery to outreach

## What’s In The Repo

Two reusable skills:

- `artist-research`
  For discovery, verification, dedupe, scoring, and export
- `artist-outreach`
  For contact prioritization and first-contact drafting

Supporting assets:

- output schema and CSV template
- scoring and source-validation references
- example prompts for common music workflows
- install, test, and example commands

## Repo Layout

```text
skills/
  artist-research/
  artist-outreach/
templates/
  artist_prospects.csv
  artist_prospects.schema.json
examples/
  compilation-scouting-prompt.md
  support-slot-scouting-prompt.md
  vexra-compilation-overlay-prompt.md
scripts/
  example-run.sh
  test.sh
install.sh
Makefile
```

## Quick Start

Install both skills:

```bash
make install
```

Or:

```bash
sh ./install.sh
```

That installs the skills into:

- `~/.claude/skills/`
- `~/.codex/skills/`

Then verify the repo:

```bash
make test
```

And print the built-in example prompts:

```bash
make examples
```

## Using It

The system works best when you specify:

- the mission
- target genres or scenes
- artist size ceiling
- contactability rules
- exclusions
- desired output format

Minimal research example:

```text
Use the artist-research skill.

Research underground artists for a label compilation.

Target:
- UK bass / UKG / speed garage / bassline / dubstep / 140 / breaks / grime-adjacent / leftfield club
- under 10k followers
- independent where possible
- public contact route required

Output:
- write a CSV with one row per viable candidate
- include artist name, handle, platform, follower estimate, contact path, fit notes, risks, scores, and source links
```

Minimal outreach example:

```text
Use the artist-outreach skill.

Draft first-contact outreach for the High priority artists in my shortlist.
Keep each message short, respectful, and tailored.
Do not sound mass-sent.
```

## Examples

Included prompts cover:

- compilation scouting
- support-slot scouting
- a label-specific VEXRA overlay example

Print them with:

```bash
make examples
```

## Claude, Codex, and Gemini

This repo was built to be portable across agent workflows.

- Claude: install into `~/.claude/skills/`
- Codex: install into `~/.codex/skills/`
- Gemini-style workflows: use the skill folders as prompt-pack references if your setup does not support formal skills

If you need custom install paths:

```bash
CLAUDE_SKILLS_DIR=/custom/claude/skills CODEX_SKILLS_DIR=/custom/codex/skills sh ./install.sh
```

## Why This Exists

Most A&R workflows are still half memory, half tabs, half spreadsheets.

That usually means:

- weak verification
- duplicate effort
- unclear shortlist quality
- poor outreach handoff

`artist-scout` is meant to make scouting more selective, more structured, and easier to reuse across releases and teams.

## Release Notes

- music-industry-first positioning
- generic core workflow, not tied to one label
- open-source and reusable under MIT
