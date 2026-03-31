---
description: "QRSPI Phase 4: Create detailed implementation plan with bite-sized tasks grouped by structure phases"
argument-hint: "<path to plans folder, e.g. docs/plans/2026-03-31-my-feature>"
---

# /plan — QRSPI Phase 4: Plan

## Hard Gate

Before doing anything else:
- Use the Glob tool to find `$ARGUMENTS/structure.md`
- If it does NOT exist, STOP and tell the user: "No structure.md found in `$ARGUMENTS/`. Run `/structure` first."
- If it DOES exist, read all prior artifacts: `$ARGUMENTS/decisions.md`, `$ARGUMENTS/research.md`, and `$ARGUMENTS/structure.md`, then proceed.

## Your Role

Create a detailed implementation plan with bite-sized tasks (2-5 minutes each) grouped by the phases defined in the structure artifact. This plan must be executable by someone with zero context about the codebase.

## Rules

- Group tasks by phase from the structure artifact.
- Each task must have: exact file paths, what to change, how to verify.
- Include `file:line` references from the research artifact.
- Follow TDD: for each feature task, write the failing test first, then implement.
- Include commit steps at natural boundaries.
- Plan must be compatible with superpowers `executing-plans` format.
- No open questions allowed — if something is unclear, resolve it now by reading code.

## Output

Write `$ARGUMENTS/plan.md` with this format:

```
# Plan: <topic>
Date: YYYY-MM-DD
Decisions: [decisions.md](decisions.md)
Research: [research.md](research.md)
Structure: [structure.md](structure.md)

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** <one sentence>
**Architecture:** <2-3 sentences>
**Tech Stack:** <key technologies>

---

## Phase 1: <name from structure>

- [ ] Task 1.1: <description>
  - File: `src/path/file.ts:42`
  - Change: <specific change to make>
  - Test: <exact command to verify>

- [ ] Task 1.2: ...

- [ ] Commit Phase 1

## Phase 2: <name from structure>

- [ ] Task 2.1: ...

...
```

Tell the user: "Plan complete. Run `/implement $ARGUMENTS` to begin execution, or review the plan first."
