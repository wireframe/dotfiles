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

4. Execute the chosen approach. **Run the Quality Gate (below) at every phase boundary**, regardless of which option is chosen.
5. As tasks complete, update the checkboxes in `$ARGUMENTS/plan.md` from `- [ ]` to `- [x]`.

## Scope Changes Mid-Execution

If the user drops, defers, or trims a phase or task during execution, before continuing check `decisions.md` for which decisions that work served. If it carried a `Firm` decision, state how dropping it changes that decision (e.g. "dropping the approval phase turns Firm decision D1 'confirm before create' into 'refuse'") and confirm that's intended — do NOT let a Firm decision silently degrade into its opposite.

## Quality Gate (per phase)

After the last task of each plan phase is implemented and its tests pass — and **before** that phase is considered done — run this gate on the phase's accumulated diff. It is non-negotiable and applies to both Option A and Option B.

1. **Verify green.** Confirm the phase's tests pass first (the verification command from the phase's plan tasks). A failing suite is a blocker — stop and fix before gating.
2. **`/simplify`.** Run it to apply reuse/simplification/efficiency/altitude cleanups (it always auto-applies). This goes first so the next step isn't re-flagging the same cleanups.
3. **Re-run the test suite.** `/simplify` mutates the working tree — reconfirm green. If it broke something, fix or revert the offending cleanup before continuing.
4. **`/code-review --fix`.** Run it to catch correctness bugs plus any remaining quality issues and apply the fixes automatically.
5. **Re-run the test suite.** `/code-review --fix` also mutates the tree — reconfirm green. If a fix broke a test, resolve it before committing.
6. **Commit the phase**, including the gate's changes (fold into the phase commit, or add a follow-up `Phase N quality gate` commit if the phase was already committed task-by-task under Option A).

Notes:
- This gate runs at the **phase seam**, not per task. Under Option A it does not replace the per-task spec/quality reviewers — it adds a whole-phase pass (`/simplify`'s altitude view + `/code-review`'s correctness sweep) over the combined diff.
- If either step's fixes are large or surprising, surface a short summary to the user before committing rather than silently moving on.
