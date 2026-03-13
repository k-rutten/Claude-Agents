# Context Folder

This folder contains project-specific context that feeds the agent pipeline.

**Owner:** Kevin Rutten
**Read by:** `product-lead` (synthesises into Phase Briefs) · `product-accelerator` (conflict check at session bootstrap) · `implement-design` (reads figma-links.md directly)

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
