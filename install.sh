#!/bin/sh
set -eu

ROOT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
CLAUDE_SKILLS_DIR=${CLAUDE_SKILLS_DIR:-"${HOME}/.claude/skills"}
CODEX_SKILLS_DIR=${CODEX_SKILLS_DIR:-"${HOME}/.codex/skills"}

install_skill() {
  src="$1"
  dst_root="$2"
  dst="$dst_root/$(basename "$src")"

  mkdir -p "$dst_root"
  rm -rf "$dst"
  cp -R "$src" "$dst"
  printf 'Installed %s -> %s\n' "$src" "$dst"
}

install_skill "$ROOT_DIR/skills/artist-research" "$CLAUDE_SKILLS_DIR"
install_skill "$ROOT_DIR/skills/artist-outreach" "$CLAUDE_SKILLS_DIR"
install_skill "$ROOT_DIR/skills/artist-research" "$CODEX_SKILLS_DIR"
install_skill "$ROOT_DIR/skills/artist-outreach" "$CODEX_SKILLS_DIR"

printf 'Install complete.\n'
