# fixture-spec.md — Scenario Test Instrument

> **Eigenaar:** ux-design (definitie) + product-lead (beheer) + bouwagent (implementatie)
> **Versie:** [v-nummer] — [datum]
> **Bijgewerkt bij elke build iteratie — geen uitzonderingen**

---

## Actieve Hypotheses

| ID | Hypothese | Status |
|---|---|---|
| H-1 | We believe [doing X] for [persona] will [outcome]. We'll know when [signal]. | In test |
| H-2 | ... | ... |

---

## Scenario Matrix

Assen: **gebruikersstatus** (nieuw / bestaand) × **datavolume** (leeg / weinig / veel)

| Scenario ID | Naam | Gebruikersstatus | Datavolume | Test hypothese | Status |
|---|---|---|---|---|---|
| S-1 | Nieuwe gebruiker — leeg | nieuw | leeg | H-1 | Actief |
| S-2 | Bestaande gebruiker — vol | bestaand | vol | H-2 | Actief |
| S-err | Foutstatus | — | — | Alle | Altijd |
| S-load | Laadstatus | — | — | Alle | Altijd |

**Regel:** Elke actieve hypothese heeft minimaal één scenario. Hypothese zonder scenario = bouwstap geblokkeerd.

---

## Scenario Definities

### S-1 — Nieuwe gebruiker, leeg
```json
{
  "scenario": "nieuw-leeg",
  "label": "Nieuwe gebruiker — geen data",
  "description": "Test H-1: [omschrijving hypothese]",
  "user": {
    "status": "nieuw",
    "naam": "Jan de Vries",
    "rol": "[rol]"
  },
  "data": [],
  "features": {}
}
```

### S-2 — Bestaande gebruiker, vol
```json
{
  "scenario": "bestaand-vol",
  "label": "Bestaande gebruiker — vol",
  "description": "Test H-2: [omschrijving hypothese]",
  "user": {
    "status": "bestaand",
    "naam": "Lisa Kuipers",
    "rol": "[rol]"
  },
  "data": [
    { "id": 1, "naam": "[voorbeeld item]", "status": "actief" }
  ],
  "features": {}
}
```

### S-err — Foutstatus
```json
{
  "scenario": "error",
  "label": "Foutstatus",
  "description": "Test error handling en recovery UX",
  "error": "Laden mislukt. Controleer je verbinding en probeer opnieuw.",
  "data": []
}
```

### S-load — Laadstatus
```json
{
  "scenario": "loading",
  "label": "Laadstatus",
  "description": "Test skeleton loading en perceived performance",
  "loading": true
}
```

---

## Analytics Events

| Event | Trigger | Parameters | Hypothese |
|---|---|---|---|
| `flow_start` | Bij laden / scenario switch | `{ scenario, hypothese }` | Alle |
| `step_start` | Bij binnenkomen van elke stap | `{ step, scherm }` | Alle |
| `field_input` | Op gebruikersinvoer (debounced) | `{ step, field }` | H-1 |
| `error` | Op validatiefout | `{ step, field, message }` | Alle |
| `step_complete` | Bij succesvol verder gaan | `{ step }` | H-1 |
| `step_back` | Bij terug navigeren | `{ step }` | Alle |
| `cta_click` | Op elke CTA | `{ label, step }` | H-2 |
| `flow_complete` | Bij succesvol afronden | `{}` | H-1, H-2 |

---

## Refinement Log

Bij elke iteratie: vermeld wat gewijzigd is in fixture-spec.

| Versie | Datum | Wijziging | Hypothese impact |
|---|---|---|---|
| v1 | [datum] | Initiële fixture setup | H-1, H-2 |
| v2 | [datum] | [wijziging] | [impact] |

---

## Snapshot Referenties

| Snapshot | Datum | Actieve hypotheses | Actieve scenario's |
|---|---|---|---|
| snapshot-v1-[datum] | [datum] | H-1, H-2 | S-1, S-2, S-err, S-load |
