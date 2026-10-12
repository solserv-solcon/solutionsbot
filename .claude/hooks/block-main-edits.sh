#!/usr/bin/env bash
# PreToolUse hook for Edit|Write: refuse edits to project files while on a protected branch.
input=$(cat)
file=$(printf '%s' "$input" | sed -n 's/.*"file_path"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
case "$file" in
  *solutionsbot*) ;;
  *) exit 0 ;;
esac
branch=$(git branch --show-current 2>/dev/null)
case "$branch" in
  main|master|develop|production)
    echo "Blocked: on protected branch '$branch'. Run /start-branch to create a feature branch first." >&2
    exit 2
    ;;
esac
exit 0
