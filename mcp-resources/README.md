# MCP Resources — Design & UI Reference Stack

> Curated MCP servers voor de pipeline. Twee categorieën: **Referentiebronnen** (grote beelddatabanken voor taste-kalibratie en commodity-detectie) en **UX-kennisbases** (guidelines, heuristieken, accessibility tools).
> 
> Gelezen door: concept-agent (reference search query per direction), ux-design (taste-kalibratie, token-extractie), qa-agent (accessibility check).

---

## Snelle beoordeling — alle gevonden servers

| Server | Categorie | Waarde voor pipeline | Status |
|---|---|---|---|
| `studio-design-mcp` | Referentie | ⭐⭐⭐⭐⭐ Primair — Mobbin local catalog + Dribbble + Pinterest. Geen API key nodig | **Aanbevolen** |
| `design-inspiration-mcp-server` | Referentie | ⭐⭐⭐⭐ Optioneel — Dribbble + Behance + Awwwards + Mobbin + Pinterest + token-extractie. Vereist betaalde Serper API key | **Optioneel (betaald)** |
| `ui-ux-pro-mcp` | Kennisbase | ⭐⭐⭐⭐ 1519+ curated resources — design systems, kleurpaletten, UX guidelines, platform HIG | **Aanbevolen** |
| `ux-mcp-server` | Kennisbase | ⭐⭐⭐⭐ 28 resources + 23 tools — WCAG, Nielsen, contrast check, dark pattern detection | **Aanbevolen** |
| `mcp-ui` (MCP-UI-Org) | Protocol | ❌ Niet relevant — gaat over renderen van UI in MCP clients, niet over design inspiratie | Skip |
| `MCP-Stack-for-UI-UX-Designers` | Workflow | ⭐⭐ Onvolwassen monorepo — website download + HTML analyse. Weinig specifiek | Skip voor nu |

---

## 1. studio-design-mcp ⭐ Primair (gratis)

**Wat het doet:** Zoekt in Dribbble, Behance, Awwwards, Mobbin én Pinterest via Serper API. Geeft image URLs, source links, dimensies terug. Heeft ook token-extractie: geef een live URL op, haalt kleuren, fonts en spacing eruit.

**Gebruik in pipeline:**
- concept-agent schrijft een reference search query per direction → ux-design of Kevin voert die uit
- ux-design gebruikt token-extractie op een referentieproduct om design system tokens te bootstrappen
- Commodity-detectie: als een direction query 50+ identieke resultaten geeft → richting is een commodity

**Tools:**
- `design_search_images` — image search over alle platforms
- `design_search_styles` — web + image parallel voor een concept
- `design_extract_tokens` — extraheer kleuren/fonts/spacing van een live URL

**Installatie:**
```bash
# Vereist Serper API key (~$5/maand voor normaal gebruik)
# Haal key op via: https://serper.dev

npm install -g design-inspiration-mcp-server
```

**Claude Code config** (`~/.claude/settings.json`):
```json
{
  "mcpServers": {
    "design-inspiration": {
      "command": "design-inspiration-mcp-server",
      "args": ["--stdio"],
      "env": {
        "SERPER_API_KEY": "jouw-key-hier"
      }
    }
  }
}
```

**GitHub:** https://github.com/YonasValentin/design-inspiration-mcp-server

---

## 2. design-inspiration-mcp-server — Optioneel (betaald)

**Wat het doet:** Mobbin local catalog (flows + screens data) + Dribbble + Pinterest. Geen authenticatie vereist. Python. Mobbin data is lokaal gebundeld — waardevol voor user journeys per app-type.

**Gebruik in pipeline:**
- Alternatief voor design-inspiration-mcp-server als geen Serper key beschikbaar is
- Specifiek sterk voor: mobile app flows, onboarding journeys, betaalpagina patronen

**Installatie:**
```bash
# Vereist Python 3.10–3.10 (let op: niet 3.11+)
brew install uv
uv pip install studio-design-mcp
```

**Claude Code config:**
```json
{
  "mcpServers": {
    "studio-design": {
      "type": "stdio",
      "command": "uv",
      "args": ["--directory", ".", "run", "-m", "studio_design_mcp"],
      "env": {}
    }
  }
}
```

**PyPI:** https://pypi.org/project/studio-design-mcp/

---

## 3. ui-ux-pro-mcp ⭐ Design intelligence kennisbase

**Wat het doet:** 1519+ gecureerde design resources via BM25 search. Dekt: design systems, kleurpaletten, typografie, UX guidelines, data visualisatie, landing pages, platform guidelines (iOS HIG, Android Material 3), framework-specifieke patronen (React, Vue, Next.js, Flutter).

**Gebruik in pipeline:**
- ux-design: opzoeken van platform-specifieke richtlijnen bij design system opbouw
- concept-agent: valideren of een direction aansluit bij bekende design system conventies
- qa-agent: checken of componenten voldoen aan platform guidelines

**Tools:**
- `search_styles` — kleur, typografie, design system stijlen
- `search_patterns` — UX patterns en best practices
- `search_components` — component-specifieke guidelines
- `search_stack` — framework-specifieke implementatiepatronen
- `search_all` — cross-domain zoekopdracht

**Installatie:**
```bash
npm install -g ui-ux-pro-mcp
```

**Claude Code config:**
```json
{
  "mcpServers": {
    "ui-ux-pro": {
      "command": "npx",
      "args": ["ui-ux-pro-mcp", "--stdio"]
    }
  }
}
```

**GitHub:** https://github.com/redf0x1/ui-ux-pro-mcp

---

## 4. ux-mcp-server ⭐ UX-analyse en accessibility toolkit

**Wat het doet:** 28 UX knowledge resources + 23 analyse tools + 4 workflow prompts. Dekt: WCAG accessibility, Nielsen heuristieken, contrast checking, dark pattern detectie, kleurpaletten, typografie scales, wireframe generatie, UX metrics (SUS score), form patterns.

**Gebruik in pipeline:**
- qa-agent: `check_contrast`, `analyze_accessibility`, `detect_dark_patterns` bij Design Gate en Build Gate
- ux-design: `generate_color_palette`, `generate_typography_scale`, `suggest_microcopy`
- validation-agent: `complete_ux_audit` na Build Gate

**Tools (selectie):**
- `check_contrast` — WCAG AA/AAA compliance
- `analyze_accessibility` — WCAG violations + fixes
- `detect_dark_patterns` — misleidende UI practices
- `generate_color_palette` — toegankelijk kleurpalet vanuit basiskleur
- `generate_typography_scale` — type scale met modular ratio
- `suggest_microinteraction` — microinteractie aanbevelingen met timing/easing
- `complete_ux_audit` — multi-dimensionele UX audit

**Installatie:**
```bash
npm install -g @elsahafy/ux-mcp-server
```

**Claude Code config:**
```json
{
  "mcpServers": {
    "ux-best-practices": {
      "command": "ux-mcp-server"
    }
  }
}
```

**GitHub:** https://github.com/elsahafy/ux-mcp-server

---

## Combinatiestrategie voor de pipeline

```
concept-agent
  → schrijft reference search query per direction
  → ux-design of Kevin voert uit via design-inspiration-mcp-server
  → commodity-check: te veel identieke resultaten = richting bijsturen

ux-design
  → design_extract_tokens op referentieproduct → bootstrap design tokens
  → generate_color_palette + check_contrast voor toegankelijk kleurpalet
  → search_stack voor framework-specifieke component implementatie

qa-agent
  → check_contrast bij Design Gate
  → analyze_accessibility bij Build Gate
  → detect_dark_patterns als risk flag in gate verdict

validation-agent
  → complete_ux_audit na Build Gate (optioneel, op aanvraag)
```

---

## Wat global-patterns.md doet wat deze tools niet doen

Deze MCP servers leveren externe referenties en guidelines. `global-patterns.md` legt jouw eigen bewezen beslissingen vast. Ze zijn complementair:

| | global-patterns.md | MCP referentieservers |
|---|---|---|
| Bron | Jouw projecten | Industrie-brede databanken |
| Autoriteit | Bewezen in jouw context | Bewezen in de markt |
| Gebruik | Arch gate skip, snelheid | Taste-kalibratie, commodity-check |
| Groeit met | Gebruik | Updates door maintainers |
