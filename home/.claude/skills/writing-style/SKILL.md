---
name: writing-style
description: "MANDATORY quality gate — apply AFTER writing ANY prose output: blog posts, newsletters, landing pages, documentation, descriptions, emails, meeting notes, or any multi-sentence text delivered to the user. Run automatically as a post-processing pass on all prose output. Do NOT skip or wait for the user to request it. TRIGGER when: writing, drafting, composing, editing, creating content, generating copy, producing text, authoring prose, summarizing for humans, crafting messages. DO NOT TRIGGER when: writing code, commit messages, or single-sentence responses."
---

# Deslop

## Overview

AI-generated text regresses to the mean: it replaces specific facts with generic positive claims. The fix is not just removing bad words — it's restoring specificity. Every edit should make the text more concrete, not just less flowery.

## Core Principle

**Specific beats generic. Always.**

AI writes: "a revolutionary platform that empowers teams"
Human writes: "a task tracker that saves our team about 3 hours a week"

When you remove slop, ask: *what specific thing was this trying to say?* If the answer is "nothing" — cut the whole sentence. If there was a real point buried under the puffery, rewrite it plainly with the actual fact.

## When to Use

- Editing AI-generated drafts
- Writing original copy (self-check before delivering)
- Reviewing landing pages, blog posts, newsletters, about pages
- Any time text feels "off" but you can't pinpoint why

## The Editing Process

### Pass 1: Scan for slop words

Check the text against the word lists below. Every match is a candidate for removal or replacement. Not every instance is wrong — "Additionally" at the start of a paragraph is a tell; "additional features" in a comparison table is fine. Context matters.

### Pass 2: Check structural patterns

Look for the formulaic structures AI defaults to (listed in Structural Patterns below). These are harder to catch than individual words because each sentence looks reasonable in isolation — the pattern only shows when you look at the whole piece.

### Pass 3: Verify cited facts

For every name-drop, study, or number: confirm the citation matches what the study actually found. AI conflates similar-sounding metrics from the same researcher (Bloom's "8% salary equivalent" vs. "13% productivity gain" are different things). If you can't verify, drop the number.

### Pass 4: Restore specificity

For every sentence you changed, ask: is the rewrite more specific than the original? If you just removed words without adding substance, the text got shorter but not better. Brevity without specificity is still slop.

### Pass 5: Self-check your edits

Read your rewrite out loud. If it sounds like something a person would say at a whiteboard, it's good. If it sounds like a press release, keep editing.

## Quick Reference: Slop Words

### Tier 1 — Almost always AI slop (remove or rewrite on sight)

| Word/Phrase | Replace with |
|---|---|
| delve (into) | look at, examine, dig into |
| tapestry | (cut entirely — it's never the right metaphor) |
| landscape (figurative) | (cut or be specific: "the market", "the industry") |
| leverage (verb) | use |
| foster | build, encourage, grow |
| garner | get, earn, attract |
| showcase (verb) | show, demonstrate |
| underscore (verb) | show, highlight, prove |
| pivotal | important, key (or cut — often unnecessary) |
| testament (to) | proof, evidence, or just state the fact |
| vibrant | (cut — what does "vibrant community" actually mean? say the specific thing) |
| empower | help, let, enable |
| seamlessly | (cut — nothing is seamless) |
| groundbreaking | (cut unless it literally broke ground) |
| cutting-edge | (cut or say what's actually new) |
| revolutionize | (cut — you probably didn't) |
| transformative | (cut or say what changed) |

### Tier 2 — Suspicious in context (check if adding real meaning)

| Word/Phrase | The problem |
|---|---|
| Additionally / Furthermore / Moreover | Padding transitions. Try "Also" or just start the sentence. |
| crucial / vital / essential | Inflation. Is it actually crucial or just useful? |
| enhance | Vague. What specifically got better? |
| innovative / innovation | Meaningless without specifics. What's the innovation? |
| comprehensive | Everything claims to be comprehensive. Say what's covered. |
| robust | Marketing filler. Say what makes it strong. |
| ensures | Overpromise. Does it really ensure, or does it help? |
| key (adjective) | Often padding. "Key features" → "features" |
| intricate / intricacies | Inflated complexity. What's actually complex about it? |
| interplay | Vague. Say how the things interact. |
| enduring | Usually puffery. |
| valuable insights | What insights? Be specific or cut. |
| best-in-class | Says nothing. Prove it or cut it. |
| world-class | Same. |
| commitment to | Usually hollow. Show the commitment through actions, don't declare it. |
| directly influence(s) | Corporate. Use "shapes" or "drives". |
| investments into X | Wrong preposition. Use "investments in X". |
| the same data shows | Academic recitation. Use prose: "The same study found...". |
| at all (as a closer) | Hedge-dramatic. "How the team thinks together at all" is rhythm without content. |

### Tier 3 — Overused AI verbs (replace with plain equivalents)

| AI prefers | Human says |
|---|---|
| serves as | is |
| stands as | is |
| represents | is |
| boasts (a feature) | has |
| features (verb) | has, includes |
| offers (a solution) | has, gives you |
| cultivate | build, grow |
| navigate | deal with, handle, work through |
| resonate (with) | matter to, connect with, appeal to |
| align (with) | match, fit |

## Structural Patterns to Catch

### The significance puff
Adding a sentence about how important/significant/pivotal something is — when the reader didn't ask.

> **AI:** "The launch marked a pivotal moment in the company's evolution."
> **Fix:** Cut it. If the launch matters, the facts will show it.

### The superficial analysis ("-ing" tacked on)
Attaching a present participle phrase that adds no information.

> **AI:** "We redesigned the dashboard, enhancing the user experience and fostering greater engagement."
> **Fix:** "We redesigned the dashboard. Daily active usage went up 15%."

### The negative parallelism
"Not only X, but Y" or "It's not just about X — it's about Y."

> **AI:** "It's not just about communication — it's about building meaningful connections."
> **Fix:** Cut it. Or just say the one thing you mean.

Stacked instances are the worst — if a single piece has more than 2-3 "Not X, but Y" structures, the writing is rhetorically posturing instead of making positive claims.

### The "despite challenges" formula
"Despite X, [subject] continues to Y" — adds nothing, just sounds like an essay.

> **AI:** "Despite the challenges of a competitive market, our platform stands as a testament to innovation."
> **Fix:** Cut the whole sentence. It's pure filler.

### Rule of three inflation
Three adjectives or three parallel phrases where one would do.

> **AI:** "...with precision, dedication, and unwavering commitment."
> **Fix:** Pick the one that's true and drop the rest.

### False ranges
"From X to Y" where X and Y don't form a real scale.

> **AI:** "from streamlining workflows to transforming team dynamics"
> **Fix:** Say the specific things it does. Don't fake a range.

### The em dash punch-up
Formulaic use of em dashes to sound energetic or sales-like.

> **AI:** "Our platform — built for modern teams — delivers results."
> **Fix:** "Our platform delivers results." (or better: say what results)

For prose where the author has flagged em-dash overuse, count occurrences and replace with periods, commas, semicolons, or colons. The em dash is the AI's default "energetic" connector and accumulates quickly.

### Elegant variation
Using a different synonym every time you refer to the same thing to avoid repetition. Humans repeat words naturally.

> **AI:** "The platform... the solution... the tool... the system..."
> **Fix:** Pick one name and use it. Repetition is fine.

### Empty "X is the [Y]" closers
Confident-sounding rhythm closers that rename the topic without adding info.

> **AI:** "Intentional team topology is the work. Team Topologies is the playbook."
> **Fix:** Cut both. End the paragraph on the last sentence that delivered a fact.

The pattern: declaring something to BE "the work / the playbook / the answer / the move / the only way." If you removed the sentence, would the reader lose any information? If no, it's just a drum hit at the end of a paragraph.

### Self-replicating insight
Restating the same idea in different words across nearby sentences, usually because the writer wanted to "land" the point a second time.

> **AI:** "Remote-first inverts the default. ... The defaults flip in your favor."
> **Fix:** Pick the strongest phrasing and cut the others. Saying it twice doesn't strengthen it.

Check adjacent paragraphs for the same idea wearing different words.

### Structure announcers
Telling the reader what's coming instead of just delivering it. "X is the floor / table stakes / the real work is above" signals "you're about to get something better" without arriving.

> **AI:** "Knowledge management is the floor. That's table stakes. The work that matters is the layer above."
> **Fix:** Cut all of it. Lead with the work that matters.

### Stacked colons (glossary entries)
Two colons in close succession turn a paragraph into a series of term-definition pairs, killing prose flow.

> **AI:** "Choice architecture (Thaler and Sunstein): design defaults so the right behavior is the cheap one. Platform engineering is the canonical example: pave the roads, and the right thing becomes the easy thing."
> **Fix:** Use a colon for the term-definition, then prose for the application. "Thaler and Sunstein call this choice architecture (*Nudge*). Platform engineering is how this ships."

### Citation-first openings
Leading a sentence with the academic anchor when the claim should lead.

> **AI:** "Thaler and Sunstein call this choice architecture in *Nudge*: design defaults so the right behavior is the cheap one."
> **Fix:** Lead with the claim, let the citation support. "Design defaults so the right behavior is the cheap one. Thaler and Sunstein call this choice architecture (*Nudge*)."

The reader cares about the claim first. The citation earns its place by anchoring it.

### Stat dump phrasing
"X found... The same data shows..." reads as academic recitation, not prose.

> **AI:** "DORA 2024 found internal developer platforms drive ~5% productivity gains. The same data shows platforms can slow throughput at the system level."
> **Fix:** Connect with natural prose: "DORA 2024 found platforms drive ~5% productivity gains, but the same study flagged a 'platform paradox' where system-level throughput can slow."

### Defensive scare quotes
Scare quotes on neutral words read defensive — the reader wonders what's being qualified.

> **AI:** "Self-service tooling removes friction from doing it the 'right way'."
> **Fix:** Either commit to the phrase without quotes, or name the actual concept. "Self-service tooling removes friction from doing it correctly."

### Trailing audience addresses
Tagging "For X teams, this is Y" at the end of a paragraph to remind the reader who the paragraph applies to, restating what's already obvious.

> **AI:** "Bezos and Jobs both knew the medium shapes the quality of the decision. For remote teams, this is how the team thinks together at all."
> **Fix:** If the section is about remote teams, the reader already knows. Cut the trailer.

### Run-on conjunctions
Joining two unrelated ideas with "and" because both need to fit into the paragraph.

> **AI:** "Open floor plans reduce face-to-face interaction (Bernstein & Turban, 2018) and claustrophobic phone booths are a draining employee experience."
> **Fix:** Split. Each idea gets its own sentence: "Open floor plans actually reduce face-to-face interaction (Bernstein & Turban, 2018). Claustrophobic phone booths are draining."

## Bolded Takeaway Anti-Patterns

When a paragraph leads with a bolded claim, the bold has to do real work. Common failures:

### Topic-rename, not a claim
A bolded sentence that names what the paragraph is about, instead of making a claim a reader could disagree with.

> **AI:** "**Knowledge management matters.**"
> **Fix:** Make a specific, falsifiable claim. "**The handbook outranks Slack.**"

**Test:** if you remove the bold and the paragraph still works, the bold was empty.

### Restating the section header
The bolded takeaway repeats the same thought as the section title, so the reader hits the same idea twice in adjacent lines.

> **Section header:** "Systems — Make the Right Thing the Easy Thing"
> **AI bolded takeaway:** "**Make the right thing the cheapest thing.**"
> **Fix:** Make the bolded takeaway distinct — a specific application or surprising consequence. "**Paved roads pay dividends.**"

### Overclaiming what the section covers
A bolded takeaway that frames the section as covering ONE thing when the larger piece covers more.

> **AI:** "**Remote-first is a hiring play.**" (when the rest of the essay also covers process and systems)
> **Fix:** Make the takeaway scoped to the paragraph's actual subject. The whole-essay thesis goes elsewhere.

### Universal claim no one would disagree with
"**Quality matters.**" or "**Hire well.**" land flat because nobody's arguing the opposite.

> **AI:** "**Hire the right people.**"
> **Fix:** State the contested version. "**Self-selection is the cheapest filter, and most companies don't use it.**"

## Self-Editing Checklist

When writing (not just editing), check your output for:

- [ ] Did I inflate significance? Would a person actually say this is "transformative"?
- [ ] Did I use filler transitions? (Additionally, Furthermore, Moreover)
- [ ] Did I default to "serves as" instead of "is"?
- [ ] Did I add "-ing" phrases that don't carry new information?
- [ ] Am I using three adjectives where one would do?
- [ ] Did I include collaborative communication? ("I hope this helps", "Let me know if you'd like me to...")
- [ ] Is every claim backed by a specific fact? If not, cut it or add one.
- [ ] Would I say this out loud to a coworker? If not, rewrite it.
- [ ] If I used a bolded takeaway, does it make a falsifiable claim distinct from the section header?
- [ ] Did I restate the same idea in different words in adjacent sentences?
- [ ] Does my closing sentence land a fact, observation, or action — or just rename the topic?
- [ ] If I cited a study, does the number actually match what that study found?
- [ ] Are my examples actually instances of the specific claim, or just generic on-topic name-drops?
- [ ] Did I lead with the claim or with the citation? Lead with the claim.
- [ ] How many em dashes did I use? Replace most with periods, commas, semicolons, or colons.
- [ ] Did I stack two colons close together? One per paragraph at most.

## Common Mistakes When De-Slopping

**Over-cutting:** Removing real information along with the slop. A sentence can contain both a real fact and AI puffery — keep the fact, cut the puffery. A newsletter that goes from 6 paragraphs to 3 sentences lost content, not just fluff. If the original had real numbers, dates, names, or plans — those survive the edit. Only the packaging changes.

**Swapping slop for slop:** Replacing one AI pattern with another. "Well received" and "opens the door" are still soft — be concrete.

**Losing the point:** Some AI paragraphs are pure filler with no real content. Don't try to rewrite these — delete them. Not every paragraph deserves to survive.

**Making it too casual:** De-slopping doesn't mean making everything sound like a text message. Match the appropriate register for the context. A company newsletter can be warm without being slangy.

**Examples that don't exemplify:** Generic on-topic name-drops (e.g., "GitLab's handbook" in a paragraph about *written narrative as decision-making*) that look on-topic but don't actually demonstrate the specific claim. GitLab's handbook is documented company state, not narrative for decisions — related but different. Pick examples that *directly* instantiate the principle. If you can't, the example is decoration, not evidence.

**Unverified cited numbers:** When citing research, verify the cited number matches the actual finding. Bloom's "8% salary equivalent" is a workers'-valuation metric; Bloom's "13% productivity gain" is from the 2013 Ctrip study. Different metrics from the same researcher. Conflating them invalidates the citation. Before publishing: name the study, name the metric, confirm the number.

**Restoring cut content cosmetically:** When the user says "this is slop, cut it," resist the urge to replace it with similar-shaped rhetoric. If the cut leaves the paragraph short, the paragraph might just be done. Trust short paragraphs.
