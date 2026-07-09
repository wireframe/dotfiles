---
description: "QRSPI Phase 2: Research the codebase based on scoped questions from /question decisions"
argument-hint: "<path to decisions folder, e.g. docs/plans/2026-03-31-my-feature>"
---

# /research — QRSPI Phase 2: Research

## Hard Gate

Before doing anything else, check that the decisions artifact exists:
- Use the Glob tool to find `$ARGUMENTS/decisions.md`
- If it does NOT exist, STOP and tell the user: "No decisions.md found in `$ARGUMENTS/`. Run `/question` first."
- If it DOES exist, read it and proceed.

## Your Role

Map the relevant codebase based on the "Research Focus Areas" from the decisions artifact. You are a documentary researcher — record what exists, not what should exist.

## Rules

- Read the decisions artifact, focusing on the "Research Focus Areas" section.
- For EACH focus area, dispatch a parallel Explore agent with a focused prompt.
- Be strictly documentary: no opinions, no suggestions, no "you should."
- Capture findings with `file:line` references.
- Compress findings — distill truth, don't dump raw file contents.
- **Own the Open decisions.** For every decision marked `Firmness: Open` in decisions.md, gather the codebase evidence needed to resolve it and lay out the viable options with grounded tradeoffs. Do NOT silently pick one, and do NOT let it pass through unaddressed — an unowned Open decision is what later gets resolved arbitrarily. Surface each in the "Open Decisions" output section below so the user (not `/structure`) resolves it deliberately.

## Output

Write the artifact automatically — do NOT ask for permission to write. Write `$ARGUMENTS/research.md` with this format:

```
# Research: <topic>
Date: YYYY-MM-DD
Decisions: [decisions.md](decisions.md)

## <Focus Area 1 title>
**Findings:**
- <what exists, where, how it works>
- Reference: `src/path/file.ts:42`

## <Focus Area 2 title>
**Findings:**
- ...

## Patterns Observed
- <naming conventions, error handling patterns, architectural patterns found>

## Constraints Discovered
- <things the decisions phase didn't anticipate>
- <technical limitations found>

## Open Decisions (must be resolved before /structure)
- **D<n> <title>:** <the viable options, with tradeoffs grounded in the findings above>. Still unresolved — recommend the user pick before structuring.
- (one entry per `Firmness: Open` decision; omit this section only if there were none)
```

Then print the full contents of the written `research.md` to the output so the user can review it inline.

If there are Open Decisions, tell the user which ones still need a call before `/structure`, and offer to record their answers back into `decisions.md` (flipping those entries from `Open` to `Firm`/`Preference`).

Tell the user: "Research complete and written to `$ARGUMENTS/research.md`. Reply with any revisions and I'll update the file in place, or run `/structure $ARGUMENTS` to start the next phase."

## Revisions

If the user replies with changes after the artifact is written, apply them by editing the existing `research.md` file (do not ask before saving), then re-print the updated contents.
