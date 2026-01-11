#!/bin/bash
# Create checkpoint before compaction
cd "$(git rev-parse --show-toplevel 2>/dev/null)" || exit 0
git add -A
git diff --cached --quiet && exit 0
TIMESTAMP=$(date '+%Y-%m-%d %H:%M')
git commit -m "auto-checkpoint: $TIMESTAMP" || true
git push 2>/dev/null || true
exit 0
