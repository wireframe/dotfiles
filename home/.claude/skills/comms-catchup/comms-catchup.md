---
name: comms-catchup
description: "Triage Gmail inbox - capture important context into Roam daily notes and draft replies. Usage: /comms-catchup"
---

# Comms Catchup — Email Inbox Triage

## Overview

Process all emails currently in the Gmail inbox, capture important context into Roam Research, and draft appropriate replies in Gmail. Never sends emails automatically.

## Prerequisites

- Gmail connector available in Claude Code
- Roam MCP tools available (`mcp__roam__*`)

## Workflow

### Step 1: Fetch Inbox

- Use Gmail connector to list all messages currently in the inbox
- Fetch full message content for each (headers, body, thread context)
- For threaded messages, read enough context to understand the full conversation

### Step 2: Triage Each Email

For each email, categorize using judgment:

| Category | Action |
|----------|--------|
| **Actionable** | Capture context + create TODO + draft Gmail reply |
| **Informational** | Capture context only |
| **Noise** | Skip entirely (newsletters, automated notifications with no meaningful content) |

### Step 3: Build Roam Blocks

**Find or create the `## Agenda::` heading** on today's daily page:
- Today's daily page UID format: `MM-DD-YYYY` (e.g., `04-02-2026`)
- Search for existing block with `Agenda::` prefix
- If not found, create as an h2 block

**Create the comms catchup block:**
- Format: `{current time} [[Comms catchup]]`
- Use 12-hour time without leading zero: `9:00 AM`, `1:30 PM`
- Insert in chronological order among existing agenda items

**For each non-noise email, create child blocks:**

```
[[Sender Name]] - {subject line}
  {1-2 sentence context summary — key decisions, dates, information, waiting-on items}
  {{[[TODO]]}} {task description} #RelevantProject
    Priority:: #P1
    Scheduled:: [[April 2nd, 2026]]
    Due:: [[April 5th, 2026]]
```

### Block Formatting Rules

- **Sender names**: Search Roam for a matching Person page (`Type:: #Person`). If found, use `[[Person Name]]` page ref. If not found, use plain text name. Do not create stub Person pages.
- **Task attributes**: Only add `Priority::`, `Scheduled::`, `Due::`, or `Blocked::` when the email implies them. Default `Scheduled::` to today if no specific date is mentioned.
- **Project references**: Link project pages inline (`#ProjectName`) when the email clearly relates to a known project.
- **Date format**: Always use Roam format: `[[Month Dayth, Year]]` (e.g., `[[April 10th, 2026]]`)

### Step 4: Draft Replies in Gmail

For actionable emails that warrant a response:
- Create a Gmail draft reply (NOT a new email — reply to the thread)
- Match the tone and formality of the existing thread
- Be concise and direct
- Include any commitments from the TODOs created
- **Never send — drafts only**

## Multiple Runs Per Day

Each invocation creates a fresh timestamped `[[Comms catchup]]` block. It will reprocess whatever is in the inbox at that moment. The user is responsible for archiving processed emails from the inbox between runs.

## What This Skill Does NOT Do

- Send any emails
- Archive or modify inbox state
- Create Roam Person pages for unknown senders
- Process spam or trash — inbox only
