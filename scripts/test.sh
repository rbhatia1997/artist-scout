#!/bin/sh
set -eu

ROOT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)

require_file() {
  if [ ! -f "$1" ]; then
    printf 'Missing required file: %s\n' "$1" >&2
    exit 1
  fi
}

require_dir() {
  if [ ! -d "$1" ]; then
    printf 'Missing required directory: %s\n' "$1" >&2
    exit 1
  fi
}

require_dir "$ROOT_DIR/skills/artist-research"
require_dir "$ROOT_DIR/skills/artist-outreach"
require_file "$ROOT_DIR/skills/artist-research/SKILL.md"
require_file "$ROOT_DIR/skills/artist-outreach/SKILL.md"
require_file "$ROOT_DIR/templates/artist_prospects.csv"
require_file "$ROOT_DIR/templates/artist_prospects.schema.json"
require_file "$ROOT_DIR/examples/compilation-scouting-prompt.md"
require_file "$ROOT_DIR/examples/support-slot-scouting-prompt.md"
require_file "$ROOT_DIR/examples/vexra-compilation-overlay-prompt.md"
require_file "$ROOT_DIR/install.sh"

TMP_HOME=$(mktemp -d)
trap 'rm -rf "$TMP_HOME"' EXIT INT TERM

HOME="$TMP_HOME" sh "$ROOT_DIR/install.sh" >/tmp/artist_scout_install_test.log

require_file "$TMP_HOME/.claude/skills/artist-research/SKILL.md"
require_file "$TMP_HOME/.claude/skills/artist-outreach/SKILL.md"
require_file "$TMP_HOME/.codex/skills/artist-research/SKILL.md"
require_file "$TMP_HOME/.codex/skills/artist-outreach/SKILL.md"

printf 'PASS: file layout and install behavior verified\n'
