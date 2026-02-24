# ClaudeAgents

Shared Claude Code agents and skills for product discovery, design, and delivery.

## Install

```bash
git clone https://github.com/k-rutten/ClaudeAgents
cd ClaudeAgents
bash setup.sh
```

Installs everything to `~/.claude/agents/` and `~/.claude/skills/`.
Verify in Claude Code with `/agents`.

---

## Structure

```
ClaudeAgents/
├── Agents/               # Claude Code subagents → ~/.claude/agents/
│   ├── product-lead.md          # Orchestrator — runs the full process
│   ├── product-accelerator.md   # Founder — gates every phase
│   ├── discover-agent.md        # Phase 1: research & problem space
│   ├── define-agent.md          # Phase 2: POV, HMWs, success metrics
│   ├── develop-agent.md         # Phase 3: concepts & flows
│   ├── deliver-agent.md         # Phase 4: prototype spec
│   ├── frontend-design.md       # Greenfield UI builder
│   └── implement-design.md      # Figma → code
├── Skills/               # Written + installed by setup.sh → ~/.claude/skills/
└── setup.sh              # One-command install
```

---

## How it works

```
You: "let's start a product project"

product-lead drafts Phase Brief
  → product-accelerator (founder) reviews brief with you
  → you lock the brief
  → phase subagent runs
  → product-accelerator reviews output
  → checkpoint with founder's verdict
  → you confirm → Phase Lock
  → next phase
```

No subagent runs without founder sign-off. No exceptions.

---

## Agents

| Agent | Role | Model |
|-------|------|-------|
| `product-lead` | Orchestrator | Opus |
| `product-accelerator` | Founder gate + sparring | Opus |
| `discover-agent` | Phase 1 — research | Sonnet |
| `define-agent` | Phase 2 — POV + HMWs | Sonnet |
| `develop-agent` | Phase 3 — concepts | Sonnet |
| `deliver-agent` | Phase 4 — specs | Sonnet |
| `frontend-design` | Greenfield UI | Sonnet |
| `implement-design` | Figma → code | Sonnet |

---

## Usage

```
# Start a product project
"let's start a product project"

# Standalone founder sparring
"spar with me about this idea"

# Build UI from scratch (no Figma)
"build a dashboard for [x]"

# Implement from Figma
"implement this: https://figma.com/design/..."
```
