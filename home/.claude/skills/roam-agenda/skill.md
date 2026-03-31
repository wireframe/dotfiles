---
name: roam-agenda
description: Use when creating meeting notes on Roam daily pages from calendar events, prepping for meetings, or organizing the daily agenda. Triggers on keywords like meeting notes, agenda, calendar prep, attendees, follow-ups.
---

# Roam Agenda — Meeting Notes from Calendar Events

## Meeting Note Structure

Meeting notes live on the Roam daily page, nested under an `Agenda::` heading:

```
[[March 19th, 2026]]
  ## Agenda::
    9:00 AM Team Standup
      Attendees:: [[Alice Smith]], [[Bob Jones]], Carol Davis
      Agenda:: Discuss Q2 roadmap priorities
      Follow-ups::
    10:30 AM 1:1 with Sarah
      Attendees:: [[Sarah Chen]]
      Agenda::
      Follow-ups::
```

## Creating a Meeting Note

Given a calendar event:

1. **Find or create the `## Agenda::` heading** (h2) on today's daily page. Search by prefix `Agenda::` since the block may contain additional text (e.g., `Agenda:: Today's my Birthday!`). If not found, create it as an h2 block.
2. **Create the meeting block** as a child of `Agenda::` with format: `{startTime} {summary}` (e.g., `9:00 AM Team Standup`)
3. **Check for duplicates** — search for an existing block starting with the same time prefix before creating a new one.
4. **Maintain chronological order** — insert the meeting block so that all meetings under `Agenda::` are sorted by start time.
5. **Add child blocks:**
   - `Attendees::` — list of attendee names, comma-separated
   - `Agenda::` — meeting description if available, otherwise leave empty
   - `Follow-ups::` — always empty, to be filled during/after the meeting

### Attendee Linking

For each attendee, search Roam for a matching Person page (`Type:: #Person`):
- If found, use `[[Person Name]]` page ref syntax
- If not found, use the plain name (do not create stub contacts)
- Match by full name, not email. If only a first name is given and multiple Person pages match, use the plain name (don't guess)

### Time Format

Use 12-hour format without leading zero: `9:00 AM`, `10:30 AM`, `1:15 PM`

### Date Format

Daily page titles use Roam's format: `[[March 19th, 2026]]`

Daily page UIDs use: `MM-DD-YYYY` (e.g., `03-19-2026`)

## Batch Calendar Prep

When prepping all meetings for a day:

1. Fetch today's calendar events via Google Calendar MCP
2. Filter to timed events only (skip all-day events)
3. Skip declined events
4. For each event, create a meeting note using the process above
5. Report which notes were created vs. already existed

## Do NOT

- Create meeting notes as top-level children of the daily page — always nest under `Agenda::`
- Create Person pages for unknown attendees
- Modify existing meeting note content (Attendees, Agenda, Follow-ups already filled in)
