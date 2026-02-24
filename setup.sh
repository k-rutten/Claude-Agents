#!/bin/bash

# ClaudeAgents — github.com/k-rutten/ClaudeAgents
# Installs agents and skills to ~/.claude/
#
# Usage (from repo root):
#   bash setup.sh

set -e

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AGENTS_SRC="$REPO/agents"

echo ""
echo "🚀 ClaudeAgents setup"
echo "====================="
echo ""

mkdir -p ~/.claude/agents ~/.claude/skills
echo "✅ ~/.claude directories ready"

echo ""
echo "📦 Installing agents → ~/.claude/agents/"
cp "$AGENTS_SRC/"*.md ~/.claude/agents/
echo "   ✅ $(ls "$AGENTS_SRC/"*.md | wc -l | tr -d ' ') agents installed"

echo ""
echo "📦 Installing skills → ~/.claude/skills/"
for skill_dir in "$AGENTS_SRC/skills"/*/; do
  name=$(basename "$skill_dir")
  mkdir -p ~/.claude/skills/"$name"
  cp "$skill_dir/SKILL.md" ~/.claude/skills/"$name/"
  echo "   ✅ $name"
done

echo ""
echo "✅ Done! Open Claude Code and run /agents to verify."
echo ""
echo "Agents:"
ls ~/.claude/agents/ | sed 's/^/   → /'
echo ""
echo "Skills:"
ls ~/.claude/skills/ | sed 's/^/   → /'
