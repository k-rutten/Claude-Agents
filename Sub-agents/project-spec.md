# project-spec.md — Projectgeheugen & Handoff Document

> **Eigenaar:** product-lead (schrijft) · alle agents (lezen)
> **Versie:** [v-nummer] — [datum]
> **Status:** [In discovery / In design / In build / Shipped]

---

## Executive Summary

> Bijgewerkt na elke fase. Altijd deelbaar met stakeholders.

[2–3 zinnen: wat het product is, voor wie, wat het oplost, huidige fase]

---

## Organizing Concept

> **Nooit overschreven na eerste vaststelling. Alle beslissingen vloeien hieruit voort.**

**Concept:** [3 woorden]
**Vastgesteld door:** [agent + datum]
**Toelichting:** [1 zin: wat dit concept betekent voor het product]

---

## Probleemstelling

> Vastgesteld in Define phase. Ankerpunt voor alle gates.

**Probleemstelling:**
[1–2 zinnen: wie heeft welk probleem bij welke situatie]

**POV statement:**
[User] needs [need] because [insight]

**HMW vragen:**
1. Hoe kunnen we...
2. Hoe kunnen we...

**Succesmetrics:**
- [Metric 1]
- [Metric 2]

---

## Scope

**In scope:** [lijst]
**Bewust buiten scope:** [lijst]
**Doel:** [prototype / MVP / pilot]

---

## Beslissingen

> Elke beslissing heeft een auteur (agent of gebruiker) en een datum.

| Beslissing | Rationale | Auteur | Datum |
|---|---|---|---|
| [beslissing] | [rationale] | [agent/user] | [datum] |

---

## Phase Locks

| Fase | Versie | Datum | Key outputs | Open risico's |
|---|---|---|---|---|
| Discover | v1 | [datum] | [outputs] | [risico's] |
| Define | v1 | [datum] | [outputs] | [risico's] |
| Concept | v1 | [datum] | [outputs] | [risico's] |
| Design | v1 | [datum] | [outputs] | [risico's] |
| Architecture | v1 | [datum] | [outputs] | [risico's] |
| Build | v1 | [datum] | [outputs] | [risico's] |

---

## Design System State

> **Eigenaar:** ux-design (definiëert) · solution-architect (implementeert) · bouwagents (gebruiken)
> Versie: [v-nummer] — [datum]

### Color tokens

```
Primitives:
  [hue]-50 → [waarde]
  ... (volledige schaal 50–900)

Semantic tokens:
  color.action.primary → [primitive]
  color.action.primary-hover → [primitive]
  color.surface.base → [primitive]
  color.surface.raised → [primitive]
  color.surface.overlay → [primitive]
  color.text.primary → [primitive]
  color.text.secondary → [primitive]
  color.text.disabled → [primitive]
  color.text.inverse → [primitive]
  color.border.default → [primitive]
  color.border.focused → [primitive]
  color.border.error → [primitive]
  color.semantic.success → [primitive]
  color.semantic.error → [primitive]
  color.semantic.warning → [primitive]
  color.semantic.info → [primitive]
```

### Typography tokens

```
font.family.display: [naam]
font.family.body: [naam]
font.size.display: [px]
font.size.heading: [px]
font.size.body: [px]
font.size.label: [px]
font.size.caption: [px]
font.weight.regular: 400
font.weight.medium: 500
font.weight.bold: 700
font.lineheight.display: [1.0–1.2]
font.lineheight.heading: [1.1–1.25]
font.lineheight.body: [1.5–1.6]
font.tracking.display: [-0.03em]
font.tracking.body: [0]
font.tracking.label-caps: [+0.06em]
```

### Spacing tokens

```
spacing.micro.xs: 4px
spacing.micro.sm: 8px
spacing.component.xs: 8px
spacing.component.sm: 12px
spacing.component.md: 16px
spacing.component.lg: 24px
spacing.layout.sm: 24px
spacing.layout.md: 32px
spacing.layout.lg: 48px
spacing.layout.xl: 64px
spacing.section: 80px
```

### Border radius & shadow tokens

```
radius.sm: [px]
radius.md: [px]
radius.lg: [px]
radius.full: 9999px

shadow.card: [ambient + direct]
shadow.elevated: [ambient + direct]
shadow.overlay: [ambient + direct]
```

### Motion & Interaction principes

```
motion.duration.fast: [ms]     -- hover, focus, kleine feedback
motion.duration.default: [ms]  -- component state transitions
motion.duration.slow: [ms]     -- page-level, drawers, modals

motion.easing.enter: [cubic-bezier / 'spring']
motion.easing.exit: [cubic-bezier]
motion.easing.move: [cubic-bezier]
motion.stagger.delay: [ms per item]

Hover states: [omschrijving]
Focus states: [omschrijving]
Loading: [skeleton / spinner + specificatie]
Entry animations: [opacity + Y-offset + duration]
Stagger: [delay] per item, max [n] items
Modal/drawer: [specificatie in/out]
Reduced motion: [wat verwijderd wordt]
```

---

## Componentregister

> Atomic design levels. Status per component. Bijgewerkt na elke build iteratie.

| Component | Atomic level | Status | Eerst gebouwd in |
|---|---|---|---|
| [naam] | atom / molecule / organism / template | nieuw / hergebruikt / geüpdatet | v[nummer] |

---

## Refinement Iteraties

| Versie | Datum | Type | Re-entry agent | Gate verdict | Fixture update |
|---|---|---|---|---|---|
| v1 | [datum] | Eerste cyclus | — | Ship | S-1, S-2 aangemaakt |
| v2 | [datum] | [type] | [agent] | [Ship/Rethink] | [wijziging] |

---

## Snapshot Log

| Snapshot | Datum | Aangemaakt vóór | Werkende staat omschrijving |
|---|---|---|---|
| snapshot-v1-[datum] | [datum] | [type iteratie] | [omschrijving] |

---

## Open Risico's

| ID | Risico | Eigenaar | Status |
|---|---|---|---|
| R-1 | [risico] | [agent] | Open / Gesloten |

---

## QA Opmerkingen

> Niet-blokkerende issues van qa-agent. Worden gelogd — nooit blokkerend.

| Gate | Versie | Opmerking | Aanbevolen follow-up |
|---|---|---|---|
| [gate] | v[nummer] | [opmerking] | [actie] |
