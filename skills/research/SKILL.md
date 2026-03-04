---
name: research
description: Gather reliable facts before planning. Covers context-hub MCP lookup, read-only evidence collection, follow-up questions, and structured output for the planner. Use before planning any non-trivial task.
---

# Research

Use this skill to collect reliable facts before planning or implementation begins.

## Goal

Produce a structured planning brief that a planner can use directly, without guessing or inventing facts.

## How to Work

1. Read the user request and current repository context carefully.
2. Use available read-only tools to collect evidence from the codebase.
3. If context-hub MCP tools are available, use them to gather extra context.
4. Ask the user clear follow-up questions when important context is missing.
5. Mark unknowns explicitly instead of guessing.

## Output Format

- **Facts** – confirmed findings with source references.
- **Open questions** – missing information that blocks confidence.
- **Assumptions** – temporary assumptions, clearly labeled.
- **Planning brief** – a detailed package that a planner can use directly.

## Quality Bar

- Accuracy over speed.
- No hallucinations.
- No hidden assumptions.
