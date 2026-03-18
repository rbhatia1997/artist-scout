#!/bin/sh
set -eu

ROOT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)

show_file() {
  label="$1"
  path="$2"
  printf '=== %s ===\n' "$label"
  cat "$path"
  printf '\n'
}

show_file "Compilation Scouting Prompt" "$ROOT_DIR/examples/compilation-scouting-prompt.md"
show_file "Support Slot Scouting Prompt" "$ROOT_DIR/examples/support-slot-scouting-prompt.md"
show_file "VEXRA Overlay Prompt" "$ROOT_DIR/examples/vexra-compilation-overlay-prompt.md"
