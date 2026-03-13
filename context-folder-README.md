# Context Folder

This folder contains project-specific context that feeds the agent pipeline.

**Owner:** Kevin Rutten
**Read by:** `product-accelerator` (reads at session bootstrap, refines with Kevin, writes to project-spec.md) · `implement-design` (reads figma-links.md directly for Figma MCP calls)
**Not read by:** `product-lead` or any other agent — they read project-spec.md only

## Information flow

```
Kevin → context/ folder
           ↓
   product-accelerator reads context/
           ↓
   discusses with Kevin → refines
           ↓
   writes to project-spec.md → ## Context Insights
           ↓
   product-lead reads project-spec.md
           ↓
   agents receive context via Phase Briefs
```

This means:
- Kevin always sees exactly what agents know — it's in project-spec.md
- No silent filtering by product-lead
- product-accelerator is the only one with the product skills to refine raw input
- insights-own.md always takes precedence over insights-ai.md if they conflict — PA resolves the conflict with Kevin before writing to spec

---

## File structure

```
context/
  insights-own.md     ← Your own observations, strategic input, hard constraints
  insights-ai.md      ← Parallel discovery output from discover-agent + define-agent
  figma-links.md      ← Figma file keys, UI kits, component library references
  meetings/           ← Meeting transcripts (one .md file per meeting)
    YYYY-MM-DD-[topic].md
```

---

## insights-own.md

Your input. Always authoritative. Agents read but never write here.
If this conflicts with insights-ai.md — this file wins.

Use for: strategic hunches, known constraints, stakeholder signals, things you've learned that aren't in any transcript.

---

## insights-ai.md

Written by `discover-agent` and `define-agent` in parallel discovery mode.
Treat as signal, not verdict. Kevin decides what to act on.

Format written by agents:
```
## Discovery findings
- [finding] (signal: [source])
- ...
⚠️ Conflict: [finding] vs. current build direction: [decision]

## Define synthesis
POV: ...
HMWs: ...
Success metrics: ...

## Parallel discovery summary
[Written last — 3–5 bullet synthesis]
```

---

## figma-links.md

Active Figma references for this project.
Read directly by `implement-design` before any design context fetch.

Format:
```
## [Project / Component name]
File key: [key]
URL: https://figma.com/design/[key]/...
Node: [node-id if specific]
Notes: [what this is — UI kit, specific screen, component library]
```

---

## meetings/

One file per meeting. Filename: `YYYY-MM-DD-[short-topic].md`

product-lead reads the most recent file on session start and extracts:
- Decisions made
- Constraints stated
- Open questions
- Names/roles of stakeholders present
