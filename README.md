# artist-scout

Reusable A&R research skill package for Claude, Codex, and Gemini-style agent workflows.

The repo is built around two portable skills:

- `skills/artist-research/`
- `skills/artist-outreach/`

That skill is designed for:

- underground artist scouting
- label compilation research
- remix or feature outreach lists
- regional scene mapping
- support-slot and lineup discovery

It is not tied to one label. You provide the taste profile, size limits, contactability rules, output schema, and quality bar.

## What This Repo Contains

- A generic artist research skill
- A generic artist outreach skill
- Reference docs for scoring, verification, and output structure
- Reusable JSON schema and CSV template files
- Example prompts for common A&R tasks

## Repo Layout

```text
skills/
  artist-research/
    SKILL.md
    references/
      output-schema.md
      scoring-rubric.md
      source-validation.md
  artist-outreach/
    SKILL.md
templates/
  artist_prospects.csv
  artist_prospects.schema.json
examples/
  compilation-scouting-prompt.md
  support-slot-scouting-prompt.md
  vexra-compilation-overlay-prompt.md
scripts/
  test.sh
install.sh
```

## Quick Install

Run:

```bash
./install.sh
```

That installs both skills into:

- `~/.claude/skills/`
- `~/.codex/skills/`

You can override either destination:

```bash
CLAUDE_SKILLS_DIR=/custom/claude/skills CODEX_SKILLS_DIR=/custom/codex/skills ./install.sh
```

## Using With Claude

Copy the skill folder into your Claude skills directory:

```bash
mkdir -p ~/.claude/skills
cp -R skills/artist-research ~/.claude/skills/
```

Then invoke it in a session by naming the skill or asking Claude to use the `artist-research` skill.
Install `artist-outreach` the same way if you want response drafting and outreach prep.

## Using With Codex

Copy the skill folder into your Codex skills directory:

```bash
mkdir -p ~/.codex/skills
cp -R skills/artist-research ~/.codex/skills/
```

Then reference the skill by name in your prompt or install it into your standard skill set.

## Using With Gemini

Gemini skill setups vary by environment, but the portable part is the same: keep the skill folder intact and point Gemini at it through your local skill or prompt-library workflow.

At minimum, copy these folders into whichever prompt or skills directory you use for Gemini:

```bash
cp -R skills/artist-research /path/to/your/gemini-skills/
cp -R skills/artist-outreach /path/to/your/gemini-skills/
```

If your Gemini environment does not support formal skills, you can still use the files as a structured prompt pack by pasting the `SKILL.md` contents plus any needed references.

## Testing

Run:

```bash
./scripts/test.sh
```

The test checks:

- required repo files exist
- `install.sh` copies both skills into temporary Claude and Codex skill directories
- the installed skill folders contain their `SKILL.md` files

## Prompt Pattern

The skill works best when your prompt specifies:

- mission or taste profile
- target genres and adjacent lanes
- size ceiling
- contactability requirements
- exclusions
- output fields
- desired output format

Minimal example:

```text
Use the artist-research skill.

Research underground artists for a compilation.

Target:
- UK bass, UKG, bassline, breaks, dubstep, grime-adjacent
- under 10k followers
- independent where possible
- public contact route required

Output:
- write a CSV with one row per viable candidate
- include artist name, handle, main platform, follower estimate, contact path, fit notes, risks, scores, and source links
```

Follow-up example:

```text
Use the artist-outreach skill.

Draft short first-contact outreach messages for the High priority artists in my CSV.
Keep them respectful, direct, and tailored to underground electronic artists.
Do not sound like a mass email.
```

## Notes

- The skill emphasizes selective, practical outreach research rather than list padding.
- It is designed for public web research and source-backed verification.
- It assumes the operator may want a CSV, but the workflow is flexible enough for Airtable, Sheets, Markdown, or JSON outputs.
- The VEXRA use case now lives as an overlay example, not as core repo logic.
