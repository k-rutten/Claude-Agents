#!/bin/bash
set -e
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p ~/.claude/agents
cp "$REPO/Sub-agents/"*.md ~/.claude/agents/
echo "✅ $(ls ~/.claude/agents/*.md | wc -l | tr -d ' ') agents installed"
ls ~/.claude/agents/ | sed 's/^/   → /'
