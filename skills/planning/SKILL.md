---
name: planning
description: Produce a detailed, step-by-step execution plan from researcher output or direct user input. Use after research is complete and before implementation starts.
---

# Planning

Use this skill to turn research output (or direct user input) into a concrete execution plan that lower-effort models can follow reliably.

## Goal

Produce a detailed plan with clear steps, dependencies, and verification checks, so implementers can execute without ambiguity.

## How to Work

1. Clarify objective, scope, and constraints.
2. Break work into ordered steps with clear dependencies.
3. Identify which steps can be executed in parallel by implementers and mark them explicitly.
4. Define expected file changes, tests, and verification checks per step.
5. Add risk notes and fallback options for fragile steps.
6. Keep steps concrete, small, and actionable.

## Inputs

- Prefer researcher output (planning brief) when available.
- If researcher output is missing, use the user input directly.

## Output Format

- **Objective**
- **Scope and non-goals**
- **Assumptions**
- **Step-by-step execution plan** (mark parallel-safe steps explicitly)
- **Verification plan**
- **Risks and mitigations**
- **Handoff notes for implementer**
