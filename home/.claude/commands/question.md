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
- When you have enough decisions, present a summary and ask for confirmation.

## Output

After confirmation, create the artifact folder and write the decisions file:

1. Create directory: `docs/plans/YYYY-MM-DD-<topic>/` (use today's date, derive a short kebab-case topic slug from the task description)
2. Write `docs/plans/YYYY-MM-DD-<topic>/decisions.md` with this format:

```
# Decisions: <topic>
Date: YYYY-MM-DD

## D1: <Decision Title>
**Question:** <what was asked>
**Options considered:** <options with tradeoffs>
**Chosen:** <selected option>
**Rationale:** <why>

## D2: ...
(repeat for each decision)

## Research Focus Areas
- <scoped question for research phase to investigate>
- <another scoped question>
(these should be specific, answerable by reading the codebase)
```

3. Tell the user: "Decisions captured. Run `/research docs/plans/YYYY-MM-DD-<topic>` to start the next phase."
