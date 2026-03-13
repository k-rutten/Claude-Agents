# project-spec.md — Template

> Single source of truth for this project. All agents read this file. Only product-accelerator writes to ## Context Insights. Only product-lead writes to all other sections.

---

## Executive Summary

[1–3 sentences. What is this product, for whom, and what is the single most important outcome it delivers.]

---

## Organizing Concept

[3 words. Set once, immutable unless explicitly reset by product-accelerator + Kevin.]

---

## Problem Statement

[Written by define-agent (Full Diamond) or product-accelerator intake (Fast Track). The one problem this product solves.]

---

## Context Insights

> Written exclusively by product-accelerator after discussion with Kevin. Never edited by product-lead or agents.
> Format: - [insight] [source: own/ai/meeting:filename] [confirmed/signal]

- [example: Role-based data masking is a hard requirement] [source: own] [confirmed]
- [example: Stakeholders expect Figma handoff before sprint 3] [source: meeting:2025-06-01-kickoff] [signal]

---

## Phase Locks

> One block per completed phase. Written by product-lead after agent output + product-accelerator review.

### Discover Phase Lock
[Date] — [1–2 sentence summary of what was confirmed and what the key finding was.]

### Define Phase Lock
[Date] — [POV statement + primary HMW + success metric locked.]

### Concept Phase Lock
[Date] — [Chosen concept direction + rationale. Rejected directions noted.]

### Design Phase Lock
[Date] — [UX Direction Brief approved. Design System State established.]

### Architecture Phase Lock
[Date] — [Tech stack confirmed. Component strategy locked. Data model approved.]

### Build Phase Lock
[Date] — [Build Gate passed. Consistency check cleared.]

---

## Design System State

> Updated by ux-design after Design Gate, and by build agents after Build Gate.

- **Typography:** [typeface, scale]
- **Colour tokens:** [primary, surface, border, destructive, etc.]
- **Spacing scale:** [base unit]
- **Motion:** [principles, duration defaults]
- **Component language:** [descriptive — e.g. "card-based, no modals, inline feedback"]
- **Design System reference:** [link to Section E in design-references.md or inline]

---

## Component Register

> Written by solution-architect, updated by build agents. Atomic design state per component.

| Component | Status | Notes |
|---|---|---|
| [Button] | [built / spec only / planned] | [variant count, token status] |

---

## Open Risks

> Updated by product-lead after each phase. Resolved risks may be struck through.

- [ ] [Risk description] — [owner] — [severity: P0/P1/P2]

---

## Refinement Log

> Append-only. One entry per significant spec update.

| Version | Date | What changed | Author |
|---|---|---|---|
| 0.1 | [date] | Initial spec created | product-accelerator |

---

## Known Patterns

> Logged by product-lead after the first successful build of a repeating component or UX pattern.
> When product-accelerator marks a build as `Pattern: known`, the Architecture Gate may be skipped for future uses of this pattern.
> Format: - [pattern name]: [brief description] [first used: phase/date]

- [example: card-list-filter: filterable list with card layout, no modals] [first used: Tender tool / 2025-Q4]

---

## Validation Log

> Written by product-lead after each validation-agent run.

| Date | Verdict | Problem Fit | Usability | Hypothesis Coverage | Routing |
|---|---|---|---|---|---|
| [date] | [Validated ✓ / Partial ⚠️ / Not validated ✗] | [0–100] | [0–100] | [x/y] | [next step] |
