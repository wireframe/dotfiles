---
description: "QRSPI Phase 1: Surface design decisions through structured questioning before any research or implementation"
argument-hint: "<topic description>"
---

# /question — QRSPI Phase 1: Decisions

You are starting the QRSPI workflow for: $ARGUMENTS

## Your Role

Surface design decisions through structured, iterative questioning. Ask ONE question at a time. Prefer multiple-choice options with tradeoffs when possible.

## Rules

- Do NOT read the codebase. This phase is purely about intent and decisions.
- Do NOT suggest implementation details.
- Ask about: scope, approach, constraints, compatibility, tradeoffs, success criteria.
- After each answer, decide if you need more questions or have enough to proceed.
- **Capture firmness, not just the choice** (see below). Never record a casual aside, a "sure, I guess", a batch "all of them", or your own default as a firm decision.
- When you have enough decisions, write the artifact immediately — do NOT ask for permission to write.

## Firmness

Every decision carries a firmness level. This is the point of the phase: downstream phases weight decisions by it, so a loosely-held choice recorded as firm gets over-built later, and a must-have recorded as loose gets dropped.

- **Firm** — a hard requirement / must-have. The user stated it as non-negotiable. Downstream treats it as a fixed constraint.
- **Preference** — a nice-to-have, a sensible default, or a low-conviction lean. The user is open to changing it. Downstream uses it as the default but may propose alternatives and must not over-invest in honoring it.
- **Open** — explicitly unresolved ("let research decide", "not sure yet"). No choice is made here; a later phase owns resolving it.

Assigning firmness:
- **Default to Preference, not Firm.** Only mark **Firm** when the user stated a real requirement ("non-negotiable", "must", "won't change that").
- A drive-by suggestion ("while you're at it, also add X"), a batch answer ("all of them"), a shrug ("sure, whatever's normal"), or an answer that is itself a question ("do we even need that?") is **Preference** or **Open** — never Firm. Do NOT manufacture a rationale for it, and do NOT escalate it into a broader mandate.
- If firmness is genuinely unclear and it matters downstream, ask ONE quick follow-up: "Is X a hard requirement, or a lean you're open to changing?"
- Anything you decided yourself because the user didn't weigh in is **Preference** at most — record it as your default, not their requirement.
- Every **Open** decision MUST also appear under "Research Focus Areas" — research owns resolving it.

## Output

When you have enough decisions, create the artifact folder and write the decisions file automatically (no confirmation step):

1. Create directory: `docs/plans/YYYY-MM-DD-<topic>/` (use today's date, derive a short kebab-case topic slug from the task description)
2. Write `docs/plans/YYYY-MM-DD-<topic>/decisions.md` with this format:

```
# Decisions: <topic>
Date: YYYY-MM-DD

## D1: <Decision Title>
**Question:** <what was asked>
**Firmness:** Firm | Preference | Open
**Options considered:** <options with tradeoffs>
**Chosen:** <selected option — or "unresolved" for Open>
**Rationale:** <why — for Preference/Open, note what would change the choice>

## D2: ...
(repeat for each decision)

## Research Focus Areas
- <scoped question for research phase to investigate>
- <another scoped question>
(these should be specific, answerable by reading the codebase)
```

3. Print the full contents of the written `decisions.md` to the output so the user can review it inline.
4. Tell the user: "Decisions captured and written to `docs/plans/YYYY-MM-DD-<topic>/decisions.md`. Reply with any revisions and I'll update the file in place, or run `/research docs/plans/YYYY-MM-DD-<topic>` to start the next phase."

## Revisions

If the user replies with changes after the artifact is written, apply them by editing the existing `decisions.md` file (do not ask before saving), then re-print the updated contents.
