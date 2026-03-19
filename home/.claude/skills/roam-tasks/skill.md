---
name: roam-tasks
description: Roam Research task and project management conventions — block structure, attributes, priorities, scheduling, deferring, and project organization. Use when creating, reading, or modifying tasks and projects in Roam via MCP tools.
---

# Roam Task & Project Conventions

## Task Block Structure

Tasks are Roam blocks using the `{{[[TODO]]}}` checkbox syntax. When completed, they become `{{[[DONE]]}}`.

**Basic task:**
```
{{[[TODO]]}} Do the thing #SomeProject
```

**Task with attributes** (each attribute is a child block):
```
{{[[TODO]]}} Submit tax documents to accountant [[2025 Taxes]]
  Priority:: #P1
  Scheduled:: [[March 19th, 2026]]
  Due:: [[March 20th, 2026]]
  Blocked:: Waiting on Bob's response
  Hard deadline per engagement letter
```

### Attribute Reference

| Attribute | Format | Purpose |
|-----------|--------|---------|
| `Priority::` | `#P0`, `#P1`, `#P2` | Urgency. P0=critical, P1=high, P2=medium. No priority = unprioritized |
| `Scheduled::` | `[[March 19th, 2026]]` | Date you plan to **work on** the task |
| `Due::` | `[[June 1st, 2026]]` | Date the task must be **completed by** |
| `Deferred::` | `[[March 25th, 2026]]` | Pushes task out of TODO Now until this date. Overrides Scheduled |
| `Blocked::` | Free text | What's blocking progress, e.g. `Waiting on Bob's response` |

Additional context goes in plain child blocks (no attribute prefix).

### Date Format

Always use Roam's natural language format with page references: `[[Month Dayth, Year]]`

Examples: `[[March 19th, 2026]]`, `[[January 1st, 2027]]`, `[[December 23rd, 2025]]`

### TODO Now Visibility

A task appears in the TODO Now list when:
- Has `Scheduled::` date ≤ today AND no `Deferred::` child, OR
- Has `Deferred::` date ≤ today

A task without `Scheduled::` stays in the **Inbox** and won't appear in TODO Now until scheduled.

## Projects

```
ProjectName
  Type:: [[Project]]
  Status:: [[Doing]]
  Priority:: #P1
```

### Project Statuses

| Status | Meaning |
|--------|---------|
| `Doing` | Actively working on |
| `Now` | Should work on soon |
| `Next` | Queued after current work |
| `Later` | Someday |
| `DONE` | Manually set when complete — no auto-transition |
| `Cancelled` | Abandoned |
| `Blocked` | Stuck on something external |

### Context Attribute

`Context::` applies to both projects and tasks. Values: `#@Work`, `#@Home`.

### Task-to-Project Relationship

Tasks belong to a project in three ways:
1. Direct child of the project page
2. References the project page (e.g., `{{[[TODO]]}} Fix login #MyProject` or `{{[[TODO]]}} Fix login [[MyProject]]`)
3. Child of a block that references the project page

Project pages often have section structure:
```
MyProject
  Type:: [[Project]]
  Status:: [[Doing]]
  Priority:: #P0
  ## Section A
    {{[[TODO]]}} First task
      Scheduled:: [[March 18th, 2026]]
  ## Section B
    {{[[TODO]]}} Second task
```

## Creating Tasks

- **Always create tasks on today's daily note page**, referencing the project inline
- Only add attributes that are needed — don't add empty or unnecessary ones

**Minimal task:**
```
{{[[TODO]]}} Buy groceries
```

**Task with project reference and attributes:**
```
{{[[TODO]]}} Submit Q1 report #WorkProjects
  Priority:: #P0
  Scheduled:: [[March 18th, 2026]]
  Due:: [[March 20th, 2026]]
```
