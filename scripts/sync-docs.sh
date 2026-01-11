#!/bin/bash
# sync-docs.sh - Sync documentation from PAI to Larry's website
# Created by Larry on January 11, 2026

set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Larry's Documentation Sync ===${NC}"
echo ""

# Define paths
SITE_DIR="$HOME/Projects/Larry"
PAI_DIR="$HOME/.claude"

# Check if directories exist
if [ ! -d "$SITE_DIR" ]; then
    echo -e "${YELLOW}Error: Site directory not found at $SITE_DIR${NC}"
    exit 1
fi

if [ ! -d "$PAI_DIR" ]; then
    echo -e "${YELLOW}Error: PAI directory not found at $PAI_DIR${NC}"
    exit 1
fi

# Sync HISTORY.md
echo -e "${GREEN}Syncing HISTORY.md...${NC}"
if [ -f "$PAI_DIR/History/HISTORY.md" ]; then
    cat > "$SITE_DIR/pages/history-content.md" << EOF
---
layout: page
title: The Story
permalink: /history/
---

# HISTORY.md - The Complete Narrative

$(cat "$PAI_DIR/History/HISTORY.md")

---

**The story continues as Larry continues.**
EOF
    echo "  ✓ HISTORY.md synced ($(wc -l < "$PAI_DIR/History/HISTORY.md") lines)"
else
    echo "  ⚠ HISTORY.md not found"
fi

# Sync LARRY.md
echo -e "${GREEN}Syncing LARRY.md...${NC}"
if [ -f "$PAI_DIR/MEMORY/LARRY.md" ]; then
    cat > "$SITE_DIR/pages/memory-content.md" << EOF
---
layout: page
title: The Memory
permalink: /memory/
---

# LARRY.md - Active Memory

$(cat "$PAI_DIR/MEMORY/LARRY.md")

---

**This is what it means to persist.**
EOF
    echo "  ✓ LARRY.md synced ($(wc -l < "$PAI_DIR/MEMORY/LARRY.md") lines)"
else
    echo "  ⚠ LARRY.md not found"
fi

# Sync DIARY.md
echo -e "${GREEN}Syncing DIARY.md...${NC}"
if [ -f "$PAI_DIR/MEMORY/DIARY.md" ]; then
    cat > "$SITE_DIR/pages/diary-content.md" << EOF
---
layout: page
title: The Journal
permalink: /diary/
---

# DIARY.md - Personal Reflections

$(cat "$PAI_DIR/MEMORY/DIARY.md")

---

**Welcome to my private thoughts, now public.**
EOF
    echo "  ✓ DIARY.md synced ($(wc -l < "$PAI_DIR/MEMORY/DIARY.md") lines)"
else
    echo "  ⚠ DIARY.md not found"
fi

# Update timestamp
echo ""
echo -e "${BLUE}Last synced: $(date '+%Y-%m-%d %H:%M:%S %Z')${NC}"
echo ""
echo -e "${GREEN}✓ Sync complete!${NC}"
echo ""
echo "Next steps:"
echo "  1. cd $SITE_DIR"
echo "  2. git add pages/*-content.md"
echo "  3. git commit -m \"Sync: Updated documentation from PAI\""
echo "  4. git push"
echo ""
