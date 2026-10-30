#!/usr/bin/env bash
# Optional: copy sk-kit instructions into a project without overwriting files.
# Usage (from task directory): bash ./sk-kit/scripts/install-to-project.sh .
set -euo pipefail

source_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd -P)"
target_dir="$(cd "${1:-.}" && pwd -P)"
if [[ "$source_dir" == "$target_dir" ]]; then
  echo 'Source kit and destination project cannot be identical.' >&2
  exit 1
fi

mkdir -p "$target_dir/.agents/skills"
for skill in "$source_dir"/.agents/skills/sk-*; do
  [[ -d "$skill" ]] || continue
  name="$(basename "$skill")"
  dest="$target_dir/.agents/skills/$name"
  if [[ -e "$dest" || -L "$dest" ]]; then
    echo "SKIP existing skill: $name"
  else
    cp -R "$skill" "$dest"
    echo "COPIED skill: $name"
  fi
done

for relative in \
  AGENTS.md \
  checklists/final-check.md \
  templates/work-record.md \
  prompts/sample-prompts.md \
  THIRD-PARTY-NOTICES.md \
  LICENSES/cofa-MIT.txt; do
  src="$source_dir/$relative"
  dst="$target_dir/$relative"
  if [[ -e "$dst" || -L "$dst" ]]; then
    echo "SKIP existing: $relative"
  else
    mkdir -p "$(dirname "$dst")"
    cp "$src" "$dst"
    echo "COPIED: $relative"
  fi
done

echo 'Installed available files without overwriting existing paths.'
echo 'Open a new Codex session to check local skill discovery, or explicitly read .agents/skills/sk-kit/SKILL.md.'
