#!/bin/bash
# Stage conversations after every response
cd "$(git rev-parse --show-toplevel 2>/dev/null)" || exit 0
git add conversations/ 2>/dev/null || true
exit 0
