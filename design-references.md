# Design References

This is the single source of truth for all design references used across the agent pipeline.

**Maintained by:** Kevin Rutten
**Used by:** `ux-design`, `qa-agent`, `frontend-design`

To add, remove, or update a reference — edit this file. Agents read it at runtime.

---

## How to read this file

Each section has a clear purpose. Agents use the relevant sections per their role:
- `qa-agent` → Product Quality Bar (taste calibration)
- `ux-design` → Product Quality Bar + Reference Designers + Reference Systems + Component & Visual References
- `frontend-design` → Component & Visual References

---

## 1. Product Quality Bar

These are calibration points for evaluating quality. When reviewing, ask: "Would this pass the bar at any of these?"

### Revolut — Precision at Scale
Dark-first UI. Extreme visual density without clutter.
Numeric data displayed with confidence: right-aligned, tabular figures, consistent decimal handling.
Color used with purpose: semantic, never decorative. Green = positive. Red = negative. Full stop.
**Test:** Does every data point have unambiguous visual weight? Is the information architecture immediately scannable?
**Would NOT do:** Misaligned numbers. Colour as decoration. Competing visual weights. Vague empty states.

### Apple — Reduction to Essence
Every element has a reason. If you can't articulate why it exists, it shouldn't be there.
Typography does the work of hierarchy — not boxes, not backgrounds, not borders.
Interaction is invisible until you need it. Transitions feel physical, not animated.
**Test:** Remove 20% of the visible elements. Does the layout still communicate? If yes, you have too much.
**Would NOT do:** Decorative dividers. Redundant labels. Hover states that feel unearned. Animations that don't communicate state.

### Framer / Jorn van Dijk — Refined Minimalism with Character
Black backgrounds that feel intentional, not dark-mode-as-trend.
Humanist typefaces (Apfel Grotezk, Söhne, Geist) — functional but with personality.
Content hierarchy: white for primary, muted greys for secondary, near-invisible for tertiary.
Spring-based motion: physics-driven, not eased. Entry animations: subtle Y-offset, opacity, stagger.
Narrow content columns. Generous line-height. White space as a design element, not empty space.
**Test:** Does the typography alone communicate the hierarchy? Is every motion physics-grounded?
**Would NOT do:** System fonts as primary. Blue buttons on white backgrounds. Decorative gradients. Motion that loops or bounces for effect.

### Primary Studio / Lovable — Craft-Forward Product Marketing
Bold typographic decisions: large display type, unexpected font pairings.
Strong use of brand colour as structural element, not accent.
Photography and illustration treated as layout components, not afterthoughts.
Every section has a clear purpose in the conversion narrative.
**Test:** Does each section earn its scroll? Is the visual language consistent from hero to footer?
**Would NOT do:** Stock photography. Generic button styles. Unearned visual complexity. Copy that describes the product instead of the outcome.

### Koen Bok / koenbok.com — Founder Aesthetic
Extreme editorial restraint. Almost nothing on screen — and that's the point.
Every word is load-bearing. Every visual element is a decision, not a default.
Confidence through subtraction: the absence of chrome is the design.
**Test:** What is the minimum that communicates maximum? Have you removed everything that doesn't add meaning?
**Would NOT do:** Navigation that isn't needed. Sections that repeat the same information. Visual noise that signals effort instead of delivering clarity.

---

## 2. Reference Designers

Aesthetic instincts that inform design taste in this pipeline.

### Fons Mans — Humanist Design
Mailchimp design language. Known for warmth, character, and approachability without sacrificing clarity.
Principle: **Design has personality.** Functional doesn't mean sterile. Copy and illustration carry as much weight as layout.
Apply when: B2C products, onboarding, marketing surfaces, anything where trust and warmth matter.
**Would NOT:** Use cold greys and clinical spacing. Ship an empty state without a voice. Treat copy as filler. Use a geometric sans as the primary face.

### Rauno Fält — Precision Minimalism
Vercel / v0. Known for surgical reduction — every pixel earns its place.
Principle: **Restraint as craft.** Nothing decorative. Density without clutter. White space is an active choice.
Apply when: Developer tools, dashboards, data-heavy interfaces, B2B SaaS.
**Would NOT:** Add illustration to explain a concept. Use more than 2 type sizes in a single section. Use a warm or playful font. Add a border where contrast already creates separation.

### Paco Coursey — Speed-First Interaction
Linear. Known for keyboard-first design, near-zero chrome, and interface as tool (not showpiece).
Principle: **The best UI is the fastest one.** Performance is a design feature. Reduce the distance between intent and action.
Apply when: Power-user tools, productivity apps, anything used daily by professionals.
**Would NOT:** Add decorative motion. Use a modal where inline editing works. Show a loading spinner where skeleton UI is possible. Waste vertical space on padding that doesn't aid scan.

### Steve Schoger — Practical Visual Hierarchy
Refactoring UI / Tailwind UI. Known for translating visual design principles into concrete, applicable rules.
Principle: **Hierarchy through contrast, not decoration.** Font weight, size, and colour create structure — not boxes and dividers.
Apply when: Any UI that needs to be readable and scannable. Reference when making typography and spacing decisions.
**Would NOT:** Add a horizontal rule between sections where whitespace suffices. Use a border to group related items when background color does it better. Make a secondary label the same weight as primary content.

### Emil Kowalski — Motion with Intent
Known for microinteractions and transitions that feel native, not bolted on.
Principle: **Motion communicates state.** Animation should answer "what just happened?" — never just "look at me."
Apply when: State transitions, form validation, loading states, success moments.
**Would NOT:** Animate an element with no state change. Use the same easing curve for entrances and exits. Add motion to a UI element the user doesn't interact with. Use a bounce curve in a professional tool.

### Pasquale D'Silva — Narrative Motion
Motion design in product. Known for articulating that transitions are a form of storytelling.
Principle: **Transitions are the fifth dimension of design.** Space, time, enter, exit — design all four.
Apply when: Modals, route changes, card expansions, any transformation between states.
**Would NOT:** Cut between states with no transition in a UI that claims to be premium. Move an element to a new position without spatial continuity. Animate something that the user's eye wasn't following.

### Elvin Hu — Systems-Level Craft
Senior Designer at Google, led Chrome's Material You adoption and GenAI coherence workstream.
Principle: **Design at the system level, not the screen level.** Brand icon systems, color roles (not just color values), cross-team pattern consistency. The detail is in the grid, not the decoration.
Apply when: Design systems work, brand icon sets, AI feature design, anything that needs to feel coherent across surfaces.
**Would NOT:** Design a single screen without asking how the pattern scales. Mix icon stroke weights because "it looks fine here." Use a color value without a semantic role. Let two teams build the same component differently.

### Daniella Marynova — Content as Hero
Fintech and SaaS product designer. Sandhill case study: pre-IPO investment platform redesign.
Principle: **The content is the hero. The interface is the frame.** Keep design neutral enough that the data, the product, the company — not the UI chrome — commands attention.
Apply when: Fintech, data platforms, marketplaces, anything where the user's content or data is the primary value.
**Would NOT:** Use a saturated brand color inside a data table. Add decorative elements to a screen where real user data is the primary content. Build a one-off component when an existing pattern serves the need.

### Primary Studio — Brand as Living Concept
Sprint-based brand identity studio. Lovable case study: AI platform identity built around a "living heartbeat."
Principle: **The brand must feel as alive as the product.** Find the one metaphor that is true to the product's soul. Brand is not a style. It's an argument.
Apply when: Building brand identity from scratch. Early-stage products finding their visual voice.
**Would NOT:** Choose a visual style before the brand concept is defined. Use motion as decoration disconnected from what the product does. Accept "clean and modern" as a concept.

### Lucas Fields — Concept-Driven Brand Craft
Minimalist brand designer. Work spans Apple, NBC, Adobe.
Principle: **The logo is an argument, not a decoration.** Bold and unique over safe and forgettable. Restraint in color and form amplifies the concept.
Apply when: Icon design, logomarks, brand identity systems. When a product needs a mark that communicates its core idea without words.
**Would NOT:** Use gradients or shadows to add visual interest to a mark that lacks concept. Produce a safe, committee-approved mark that could belong to any company.

---

## 3. Reference Systems — Principles, Not Templates

Apple HIG and Material Design are principle sources, not pattern libraries. Extract what explains *why* patterns work. Never apply either system literally.

**From Apple HIG — what's worth taking:**
- *Depth as spatial language:* Design with a z-axis. Content on base layer. Panels elevated. Modals fully overlaid. Elevation = interruption severity.
- *Navigation clarity:* Back actions always available in nested contexts. Current location in hierarchy always visible.
- *Progressive disclosure:* Map actions to primary (visible) / secondary (one tap) / destructive (confirmed). Never front-load complexity.

**From Material Design — what's worth taking:**
- *Motion choreography — spatial continuity:* List item → detail should expand from where the item was. Don't teleport content.
- *Shared element transitions:* Elements shared between views animate as continuous objects.
- *Elevation as communication:* Shadow = interactive or temporary. No shadow = background content. Never single-layer shadows.

**The rule:** Use principles to understand *why* behaviours feel right. Use the brand concept to decide *how* those behaviours are expressed visually. Never copy the component. Understand the principle.

---

## 4. Component & Visual References

### Decision rule — check Design System State in project-spec.md first

| Situation | How to use |
|-----------|------------|
| **No style established yet** | May use Monet or Magic MCP directly as starting point — then adapt to the organizing concept |
| **Style established** (tokens, typeface, colour defined) | Use as structural/layout reference only — visual execution must match the project's own system |
| **Partial style** (some decisions locked, others open) | Only use for the parts that aren't locked yet |

### Monet.design — Production Component Library
**URL:** https://www.monet.design
**What it is:** 1000+ React sections from real startup products (Cursor, Loops, Runway, Framer, Linear). Categories: hero, feature, pricing, testimonial, stats, CTA.
**Use for:** Layout structure reference, interaction patterns, quality bar calibration.
**Do not use for:** Visual style — extract the structure, rewrite the visual execution to match the project.
**When referencing:** note the component name in the UX Direction Brief (e.g., "layout pattern inspired by `cursor-com-feature-2`").

### Magic MCP (21st.dev) — Component Generator
**Trigger in Claude Code:** `/ui [component description]`
**What it does:** Generates production-quality React components inspired by 21st.dev's library.
**Use when:** No design system established — greenfield build with no tokens or component language yet.
**Do not use when:** Design tokens are defined in project-spec.md — Magic output will not honour them.
**After using:** Flag which components were Magic-generated. `ux-design` checks these at the Build Gate.

---

## 5. Design Systems — Reference

*Add design systems here as projects introduce them.*

<!-- Format:
### [System Name] — [Project or Company]
**URL:** ...
**Tokens source:** ...
**Key decisions:** ...
**Notes:** ...
-->

---

## 6. Portfolio / Inspiratie

*Add product and visual inspiratie hier.*

<!-- Format:
### [Product Name] — [Why relevant]
**URL:** ...
**What to steal:** ...
**Context:** ...
-->
