---
name: rxjs
description: RxJS state management guidelines for keeping state inside streams and using pure transformations. Use when working with RxJS observables, Subjects, or reactive patterns.
---

# RxJS

See [AGENTS.md](../../AGENTS.md) for general guidelines.

---

## State Management

- Keep all state inside the stream — no external mutation
- Avoid unnecessary Subjects; derive from existing streams
- Use pure transformations (`map`, `filter`, `switchMap`) over imperative logic
