# Agent Code Guidelines

This document contains general guidelines for writing clear, maintainable code. For framework-specific guidelines, see the links below.

## Index

- [Angular-specific guidelines](./angular.md)
- [Ionic-specific guidelines](./ionic.md)
- [NestJS-specific guidelines](./nestjs.md)
- [RxJS-specific guidelines](./rxjs.md)
- [TypeScript-specific guidelines](./typescript.md)

---

## Code Structure & Style

- **One responsibility per class or function** — do one thing, do it well.
- **Keep it small:**

  - Functions ≤ 10 lines
  - Classes ≤ 300 lines
    Anything bigger is a signal to refactor.

- **Refactor before committing:** ask "Can this be simpler or smaller?"
- Use **early returns** to reduce nesting.
- Always use **curly braces** with `if` statements.
- Avoid complex **ternaries** — except in templates.
- Prefer clear, readable expressions over clever tricks.

---

## Naming & Abstraction

- Choose names that describe **what** and **why**, not **how**.
- Don't over-abstract — clarity beats cleverness.
- Keep each function at **one abstraction level** (don't mix business logic with low-level details).
- Short functions should **read like a story** from top to bottom.

---

## Comments & Documentation

Only comment when the code can't explain itself.
Valid cases:

- Workarounds for buggy or inconsistent third-party APIs
- Warnings about order, side effects, or hidden constraints
- Deprecated code (include reason or issue link)
- External or legal requirements
- Non-obvious intent
- TODO / FIXME with clear next steps or references

> Don't comment bad code — **rewrite it.**

---

## Refactoring Mindset

- Be alert for duplication — extract a shared function if only small parts differ.
- Favor **immutable data**; avoid variable reassignments.
- Aim for **small, testable units** — easy to verify, easy to reuse.
- Keep the codebase **boring** in a good way: predictable, simple, consistent.

---

## Build & Quality Gates

Before finishing, ensure:

- No type errors
- No lint errors
- All tests pass
