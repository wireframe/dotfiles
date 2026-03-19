---
name: roam-project-management
description: Use when creating Roam project pages, changing project status, breaking projects into tasks, or adding knowledge to project pages. Triggers on keywords like project, status, priority, planning, kickoff, and project page.
---

# Roam Project Management

## Project Page Structure

Every project page has a standardized header, then freeform content below a `---` separator:

```
ProjectName
  Type:: #Project
  Priority:: #P1
  Status:: #Doing
  Context:: #@Work
  Topics:: #Tag1 #[[Multi Word Tag]]
  ## Tasks::
    {{[[roam/render]]: ((roam/js/project-tasks))}}
  ---
```

**Syntax note:** Status and Priority use `#hashtag` syntax (e.g., `#Doing`, `#P1`). Topics use `#tag` for single words and `#[[multi word]]` for phrases. Context values are always `#@Work` or `#@Home` — this is a closed set.

## Creating a Project

Ask the user for these inputs (Priority and Status should be set upfront, not defaulted blindly):

| Field | Required | Default | Notes |
|-------|----------|---------|-------|
| Name | Yes | — | Becomes the page title |
| Priority | Yes | — | `#P0` (critical), `#P1` (high), `#P2` (medium) |
| Status | Yes | `#Later` | See status table below |
| Context | No | omit | `#@Work` or `#@Home` — only include if specified |
| Topics | No | empty | Freeform tags, can be added later |

Create the page with the standard structure above. The `## Tasks::` section embeds the `roam/js/project-tasks` component which auto-renders all TODOs referencing this project.

## Status Transitions

Any status can transition to any other — there is no enforced progression.

| Status | Meaning |
|--------|---------|
| `#Later` | Someday/maybe |
| `#Next` | Queued after current work |
| `#Now` | Should work on soon |
| `#Doing` | Actively working on |
| `#DONE` | Complete |
| `#Cancelled` | Abandoned |
| `#Blocked` | Stuck on something external |

To transition: find and update the `Status::` child block on the project page.

### Transition guidance

- **To Cancelled:** Ask the user for a reason. Add it as a child block under Status.
- **To Blocked:** Add a child block describing what's blocking.
- **To DONE:** Prompt the user to review remaining open tasks — close, move, or cancel them.

## Planning Tasks

When breaking a project into tasks:

1. **Read the project page first** to understand context, objectives, and existing work.
2. **Create tasks on today's daily note page**, referencing the project inline with `[[ProjectName]]` or `#ProjectName`.
3. **Only add attributes the user specifies** — don't add empty Scheduled/Due/Priority.
4. **Don't over-plan** — create tasks for the immediate next phase, not the entire project.

See the `roam-tasks` skill for task block structure, attribute reference, and date format conventions.

### Context attribute

`Context::` (`#@Work`, `#@Home`) applies to both projects and individual tasks.

## Enriching a Project Page

Projects are living knowledge pages. Content sections go below the `---` separator.

### Adding content

- Use `## Heading` blocks to organize by topic
- Section names are freeform and project-specific
- `## Appendix::` goes at the bottom as a catch-all for reference material
- Read the project page before adding content to avoid duplicating existing sections

### Do NOT

- Modify the standard header (attributes + Tasks + separator)
- Restructure or reorder existing content
- Add boilerplate sections without actual content
