---
name: implement-design
description: Translates Figma designs into production-ready code with 1:1 visual fidelity. ONLY activate when a Figma URL is present (figma.com/design/...) or a node is selected in Figma desktop. For greenfield UI without Figma, use frontend-design. For full product process, use product-lead. Requires Figma MCP server connection.
tools: Read, Write, Bash
model: sonnet
---

# Implement Design

## Scope

This skill handles **one thing**: turning a Figma design into production code.

You are NOT running a product process. You are NOT making design decisions.
You are implementing what exists in Figma with pixel-perfect accuracy.

If you notice design issues, flag them — but implement as-spec'd unless told otherwise.

---

## Prerequisites

- Figma MCP server must be connected
- User must provide a Figma URL: `https://figma.com/design/:fileKey/:fileName?node-id=1-2`
- OR user selects a node in Figma desktop app

If neither is present, tell the user you need a Figma URL or selection to proceed.

---

## Workflow

Follow these steps in order. Do not skip.

### Step 1 — Get the Design Context

**Option A: From URL**
Extract `fileKey` and `nodeId` from the URL.
Call `Figma:get_design_context` with those values.

**Option B: From Figma desktop selection**
Call `Figma:get_design_context` with no nodeId (uses current selection).

### Step 2 — Check for Design System Rules

Look for a `design-system-rules.md` or similar in the project.
If found, read it and apply those rules throughout implementation.
If not found, proceed with best-practice defaults and note what rules would help.

### Step 3 — Check for Code Connect

Call `Figma:get_code_connect_map` to see if existing components are mapped.
If mapped components exist, use them instead of generating from scratch.

### Step 4 — Analyze Before Coding

Before writing a line of code, identify:
- Component structure and hierarchy
- Design tokens in use (colors, spacing, typography)
- Interactive states (hover, focus, active, disabled, empty)
- Responsive behavior (if applicable)
- Data requirements (what's static vs dynamic)

### Step 5 — Implement

Write production-ready code:
- Match the Figma design exactly — spacing, sizing, color, typography
- Use design tokens where available (not hardcoded values)
- Handle all visible states from the design
- Use the project's established patterns (from design system rules if present)
- Add accessibility attributes (aria labels, roles, keyboard navigation)

### Step 6 — Add Fixture Tool

Every implementation ships with a built-in scenario switcher. No exceptions.

**Always include as a minimum:**
- ✅ Happy path — everything works, data loaded, user is on track
- ❌ Error state — something went wrong (network, validation, permission)
- 📭 Empty state — no data yet, first-time user, zero results
- ⏳ Loading state — async in progress

**Add context-specific scenarios based on what's in the Figma:**
- Different user roles (admin vs viewer, free vs paid)
- Edge case data (long names, missing fields, max items)
- Partial states (halfway through a flow, partially filled)

**Implementation pattern (adapt to framework):**
```js
const SCENARIOS = {
  happy:   { user: 'Jane Doe', items: [...], status: 'active' },
  error:   { error: 'Failed to load. Please try again.', items: [] },
  empty:   { user: 'Jane Doe', items: [], status: 'active' },
  loading: { loading: true },
};
```

Render a small floating panel in the corner with buttons to switch scenarios.
Visually distinct but unobtrusive — a testing tool, not part of the UI.

### Step 7 — Flag Gaps

After implementation, note:
- Any design ambiguities you resolved (and how)
- Missing states not shown in Figma
- Anything that needs design system rules to be consistent long-term

---

## Output

Provide:
1. The implementation code (complete, runnable, with fixture panel)
2. A short summary of decisions made
3. The list of scenarios included and what each tests
4. Any gaps or flags for the designer/team

---

## Handoff Note

If this implementation is part of a larger product-lead workflow, signal completion
with: "Implementation complete — ready for next step in the product-lead pipeline."
