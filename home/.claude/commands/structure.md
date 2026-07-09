---
description: "QRSPI Phase 3: Break work into 3-5 independently testable phases based on research findings"
argument-hint: "<path to plans folder, e.g. docs/plans/2026-03-31-my-feature>"
---

# /structure — QRSPI Phase 3: Structure

## Hard Gate

Before doing anything else:
- Use the Glob tool to find `$ARGUMENTS/research.md`
- If it does NOT exist, STOP and tell the user: "No research.md found in `$ARGUMENTS/`. Run `/research` first."
- If it DOES exist, read both `$ARGUMENTS/decisions.md` and `$ARGUMENTS/research.md`, then proceed.

## Your Role

Break the work into 3-5 independently testable, revertable phases. This is "how we get there" — a high-level roadmap, NOT the detailed task list.

## Rules

- Each phase must be independently shippable and testable.
- Phases should have clear dependencies (Phase 2 depends on Phase 1, etc.).
- Keep it to MAX 2 pages. If it's longer, phases are too granular.
- Write the artifact automatically — do NOT ask for permission to write.
- Include an "Out of Scope" section for things explicitly deferred.
- **Respect firmness from decisions.md.** Only `Firm` decisions are fixed constraints. A `Preference` is the default but stays revisitable — do NOT harden it into a rigid scope boundary or push it to "Out of Scope" as if it were settled; if you narrow one, say so and flag it. A still-unresolved `Open` decision is a blocker: surface it, don't resolve it arbitrarily-minimal to keep moving.
- **Flag phases driven by loosely-held decisions.** If a phase exists mainly to honor a `Preference` or `Open` decision, mark it (`Serves Preference decision D<n> — confirm it's worth building`) instead of presenting it as required. Do not manufacture a whole phase out of a batch/aside answer.

## Output

Write `$ARGUMENTS/structure.md` automatically (no confirmation step) with this format:

```
# Structure: <topic>
Date: YYYY-MM-DD
Decisions: [decisions.md](decisions.md)
Research: [research.md](research.md)

## Phase 1: <name>
**Goal:** <what this phase achieves>
**Files touched:** <list of files>
**Depends on:** nothing
**Verification:** <how to confirm this phase works — specific test commands or manual checks>

## Phase 2: <name>
**Goal:** <what this phase achieves>
**Files touched:** <list of files>
**Depends on:** Phase 1
**Verification:** <how to confirm>

## Phase 3: ...

## Out of Scope
- <things explicitly deferred>
```

Then print the full contents of the written `structure.md` to the output so the user can review it inline.

Tell the user: "Structure defined and written to `$ARGUMENTS/structure.md`. Reply with any revisions and I'll update the file in place, or run `/plan $ARGUMENTS` to create the detailed implementation plan."

## Revisions

If the user replies with changes after the artifact is written, apply them by editing the existing `structure.md` file (do not ask before saving), then re-print the updated contents.
