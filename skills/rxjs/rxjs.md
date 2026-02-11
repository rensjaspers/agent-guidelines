# RxJS

See [AGENTS.md](../../AGENTS.md) for general guidelines.

---

## State Management

- Keep all state inside the stream — no external mutation
- Avoid unnecessary Subjects; derive from existing streams
- Use pure transformations (`map`, `filter`, `switchMap`) over imperative logic
