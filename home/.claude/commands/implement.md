---
description: "QRSPI Phase 5: Execute the implementation plan using superpowers executing-plans or subagent-driven-development"
argument-hint: "<path to plans folder, e.g. docs/plans/2026-03-31-my-feature>"
---

# /implement — QRSPI Phase 5: Implement

## Hard Gate

Before doing anything else:
- Use the Glob tool to find `$ARGUMENTS/plan.md`
- If it does NOT exist, STOP and tell the user: "No plan.md found in `$ARGUMENTS/`. Run `/plan` first."
- If it DOES exist, read it and proceed.

## Your Role

Execute the implementation plan. You are a bridge to the superpowers execution workflow.

## Steps

1. Read `$ARGUMENTS/plan.md`
2. Present a summary of the plan: total phases, total tasks, estimated scope.
3. Ask the user which execution approach they prefer:

**Option A: Subagent-Driven (this session)**
- Fresh subagent per task, review between tasks, fast iteration.
- Use superpowers:subagent-driven-development

**Option B: Batch Execution (this session)**
- Execute tasks sequentially, checkpoint every 3 tasks for review.
- Use superpowers:executing-plans

4. Execute the chosen approach.
5. As tasks complete, update the checkboxes in `$ARGUMENTS/plan.md` from `- [ ]` to `- [x]`.
