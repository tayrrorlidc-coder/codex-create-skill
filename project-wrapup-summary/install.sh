#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$SCRIPT_DIR/project-wrapup-summary"

if [ ! -d "$SKILL_DIR" ]; then
  if [ -f "$SCRIPT_DIR/SKILL.md" ]; then
    SKILL_DIR="$SCRIPT_DIR"
  else
    echo "Cannot find project-wrapup-summary skill folder or SKILL.md." >&2
    exit 1
  fi
fi

TARGET_ROOT="$HOME/.codex/skills"
TARGET_DIR="$TARGET_ROOT/project-wrapup-summary"

mkdir -p "$TARGET_ROOT"
rm -rf "$TARGET_DIR"
cp -R "$SKILL_DIR" "$TARGET_DIR"

echo "Installed project-wrapup-summary to:"
echo "$TARGET_DIR"
echo
echo "Restart Codex if it is already open, then use prompts like:"
echo "总结这个项目"
echo "wrap up this coding session"
