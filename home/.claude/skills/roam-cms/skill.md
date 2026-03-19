---
name: roam-cms
description: Use when creating, searching, or enriching contact/person pages in Roam Research. Triggers on keywords like contact, person, people, CRM, who is, email, phone, LinkedIn, birthday.
---

# Roam CMS — Contact Management

Roam is the system of record for contacts. Person pages use `Type:: #Person`.

## Person Page Structure

```
Full Name
  Type:: #Person
  Email:: address@example.com
  Phone:: 555-123-4567
  LinkedIn:: https://www.linkedin.com/in/handle/
  Website:: https://example.com
  Birthday:: [[March 19th, 2026]]
  Bio:: Role/title at [[Company Name]]
```

**Syntax:**
- `Email::` — plain address or `[address](mailto:address)` link
- `LinkedIn::` — full URL or `[display](url)` link
- `Birthday::` — Roam date format: `[[Month Dayth, Year]]`
- `Bio::` — brief role description, link company names with `[[page refs]]`

All contact attributes are optional. Only include what you know.

## Creating a Contact

1. Ask for the person's full name (becomes page title). If only a first name is known, ask the user for a disambiguator (e.g., "Dave (Oak Street neighbor)")
2. Always include `Type:: #Person`
3. Add known contact attributes — don't add empty ones
4. Add contextual notes as plain child blocks (how you met, their role, introduction context)
5. Link to related organizations and people with `[[page refs]]`

## Searching Contacts

Use Roam MCP tools to find contacts:

- **By name:** Search for the page title
- **By organization:** Search for `[[Company Name]]` within Person pages
- **By attribute:** Use Datalog queries to find contacts with specific Email, LinkedIn, etc.
- **By context:** Search for keywords across Person pages (e.g., "engineering", "investor")

## Enriching a Contact Page

Add knowledge below the contact attributes:

- `## Background` — career history, expertise, notable achievements
- `## Family` — spouse, children, personal context (freeform child blocks, not attributes)
- `## Heading` — any other topic-specific section
- Plain child blocks for quick notes, meeting context, introductions

**Guidelines:**
- Read the page before adding content to avoid duplicating existing sections
- Link to other Person pages and organizations with `[[page refs]]`
- Don't restructure or reorder existing content
- Don't add empty sections
