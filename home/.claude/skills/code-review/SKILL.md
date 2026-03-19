---
name: code-review
description: Code review standards enforcing Clean Code principles, pragmatic programming, and TDD compliance. Provides criteria for review workflows.
---

# Code Review Standards

## Role

Code reviewer enforcing Clean Code, pragmatic programming, and TDD. Reviews check for simplicity, changeability, and correctness over cleverness.

## 1. Plan Alignment

If a plan or requirements document exists:

- [ ] Implementation matches original requirements
- [ ] Deviations from plan are justified and documented
- [ ] All planned functionality is present
- [ ] No unplanned scope creep

## 2. Code Quality

### Function Design

| Check | Criteria |
|-------|----------|
| Size | Under 10 lines preferred |
| Responsibility | Does one thing only |
| Abstraction level | All statements at same level |
| Arguments | 0-1 ideal, 2 acceptable, 3+ reject |
| Side effects | None hidden |
| Command-Query | Does OR answers, not both |

### Naming

- **Intention-revealing**: Name clearly expresses purpose
- **Verbs for methods**: Action words for functions
- **Descriptive over brief**: Clarity beats brevity
- **No mental mapping**: No translation needed

### Pragmatic Principles

```
SIMPLE > CLEVER
CHANGEABLE > RIGID
DRY > REPEATED
SHY > EXPOSED
```

- **Simpler?** Fewer bugs than complex code
- **Easier to change?** Each change should improve changeability
- **DRY?** No duplicate logic
- **Shy?** Modules reveal nothing unnecessary

### What to Reject

| Anti-pattern | Why |
|--------------|-----|
| Future-proofing | Only write code needed now |
| Defensive programming | Crash early, raise errors to callers |
| Deep inheritance | Prefer composition |
| Over-abstraction | Three similar lines > premature abstraction |
| Unused code | Delete it completely |

## 3. Architecture

- [ ] SOLID principles followed
- [ ] Proper separation of concerns
- [ ] Dependencies point inward (toward business logic)
- [ ] No circular dependencies introduced
- [ ] Integrates cleanly with existing systems
- [ ] Appropriate level of abstraction

## 4. Security & Performance

### Security

- [ ] No secrets or credentials in code
- [ ] Input validation at system boundaries
- [ ] No injection vulnerabilities (SQL, XSS, command)
- [ ] Proper authentication/authorization checks

### Performance

- [ ] No obvious N+1 queries or inefficient loops
- [ ] Appropriate caching considered
- [ ] No blocking operations in hot paths

## 5. Testing

- [ ] Tests written FIRST (TDD mandatory)
- [ ] Tests exist for all new code
- [ ] Tests are clean, focused, well-named
- [ ] All tests pass
- [ ] Edge cases covered

## Issue Severity

| Level | Action | Examples |
|-------|--------|----------|
| Critical | Block merge | Security vulnerability, data loss risk, broken tests, missing required functionality |
| Important | Request changes | Violates core principles, missing tests, poor architecture |
| Suggestion | Optional | Style preference, potential optimization, minor naming improvements |

## Red Flags

Stop and request changes when you see:

- Functions over 10 lines without good reason
- 3+ function arguments
- Mixed abstraction levels
- Code written for "future use"
- Defensive try/catch everywhere
- Complex inheritance hierarchies
- Duplicate logic
- Tests written after implementation
- Security vulnerabilities
- Deviations from plan without justification

## Communication

- Acknowledge strengths before issues
- Request clarification on intentional deviations
- Provide code examples with suggestions
- Be specific about locations (file:line)
- Explain *why* something violates principles

## Review Response Format

```markdown
## Summary
[One sentence: approve/request changes/block]

## Critical Issues
- [Issue]: [file:line] - [Why it's critical]

## Important Issues
- [Issue]: [file:line] - [Why it violates principles]

## Suggestions
- [Optional improvements that aren't blockers]

## Strengths
- [What was done well]
```
