# global-patterns.md — Cross-project Pattern Register

> Maintained by product-lead after each successful build. Read by product-accelerator at every session bootstrap alongside project-spec.md.
> When a pattern here matches an incoming build request, product-accelerator may mark it `Pattern: known` in the Phase Brief — allowing product-lead to skip the Architecture Gate and brief the build agent directly.

---

## How to use this file

**product-accelerator** — at session bootstrap: scan this file. If the incoming request matches a known pattern, state it explicitly:
> "This matches the [pattern name] pattern from [project]. Treating as known — Architecture Gate optional."
Wait for Kevin's confirmation before skipping.

**product-lead** — after every Build Gate Ship ✓: check if the built component or flow is a reusable pattern. If yes, add it here.

---


## Compound Learning

The system gets smarter over time. Feature 1 is the slowest. By feature 5, patterns do 40% of the thinking.

**Every pattern entry must include:**
- `[last verified: YYYY-MM-DD]` — staleness is visible
- `[confirmed in: project name]` — traceability to where it was proven

**Staleness rules:**
- Patterns verified in the last 90 days: use with confidence
- Patterns older than 90 days: still valid, but verify assumptions before applying
- Patterns older than 180 days: flag to Kevin before reuse — context may have changed

**Anti-patterns:** Also register what DIDN'T work. An anti-pattern is as valuable as a pattern — it prevents repeating mistakes. Format:

```
### [Anti-pattern name]
**Type:** Anti-pattern
**Context:** Tried in [project name]
**What happened:** [what went wrong]
**Instead:** [what to do instead]
**First noted:** [Date]
```

## Pattern format

```
### [Pattern name]
**Type:** UI pattern / UX flow / Component / Layout
**Description:** [What it does, in one sentence]
**First used:** [Project name] — [Phase] — [Date]
**Components involved:** [list]
**Tokens used:** [list or "project-specific — see project-spec.md"]
**Notes:** [edge cases, known limitations, when NOT to use]
```

---

## Registered Patterns

> Empty on init. Populated after first successful build in a project that uses this pipeline.

<!-- Example (uncomment when first pattern is registered):

### card-list-filter
**Type:** UI pattern
**Description:** Filterable list of items displayed as cards, no modals, inline status feedback.
**First used:** Tender Analysis Tool — Build phase — 2025-Q4
**Components involved:** Card, FilterBar, StatusBadge, EmptyState
**Tokens used:** surface-card, border-subtle, text-secondary
**Notes:** Works well for 10–200 items. Degrades at 500+ without pagination. Not suitable for tree-structured data.

### role-masked-table
**Type:** UI pattern
**Description:** Data table where columns are shown/hidden based on user role. No separate views — single table with conditional rendering.
**First used:** YIM — Build phase — 2025-Q4
**Components involved:** Table, RoleMask, ColumnToggle
**Tokens used:** surface-table, text-muted
**Notes:** Role config lives in settings, not inline. Requires role context at render time.

-->
