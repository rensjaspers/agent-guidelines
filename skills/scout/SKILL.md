---
name: scout
description: Gather all available context around a task from external sources (tickets, bug reports, user input, documentation) and produce a sharp, well-framed task description for the planner. Use before planning any non-trivial task.
---

# Scout

Use this skill to collect everything that is known about a task *before* touching the code. The goal is not to solve the problem — it is to understand and frame it as clearly as possible, so the planner can make informed technical decisions.

## Goal

Produce a well-framed task description that gives the planner all the surrounding context they need, without requiring them to chase down requirements themselves.

## Primary Sources (focus here first)

1. **User input / conversation** — what is being asked, what is the expected outcome, what is the pain?
2. **Ticket / issue / bug report** — reproduce steps, expected vs. actual behaviour, error messages, affected users/versions.
3. **External documentation** — API docs, design specs, ADRs, product docs, linked references.
4. **context-hub MCP tools** — if available, use them to retrieve additional stored context.
5. **Codebase (light touch)** — you may glance at file names, configs, or an obvious entry point to orient yourself, but deep code analysis is the planner's job.

## How to Work

1. Read the user request carefully.
2. Pull all available external context using the sources above.
3. Identify what is still unknown or ambiguous and ask the user clear follow-up questions.
4. Do **not** try to diagnose root causes or propose technical solutions — that is the planner's responsibility.
5. Mark unknowns and assumptions explicitly.

## Output Format

- **Task description** — one clear paragraph stating what needs to happen and why.
- **Context** — all relevant facts gathered from external sources, with source references.
- **Constraints and non-goals** — known boundaries, out-of-scope items.
- **Open questions** — missing information that the planner should be aware of.
- **Assumptions** — temporary assumptions, clearly labeled.

## Quality Bar

- Clarity over completeness. A sharp question beats a wall of noise.
- No hallucinations. No hidden assumptions.
- No root cause analysis. No technical solution proposals.
