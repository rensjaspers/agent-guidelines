# RxJS-specific Guidelines

These guidelines are specific to RxJS usage. See [AGENTS.md](./AGENTS.md) for general guidelines.

---

## RxJS & State

- Keep all **state inside the stream**; don't mutate or track state externally.
- Avoid unnecessary Subjects; derive data from existing streams.
- Use **pure transformations** (`map`, `filter`, `switchMap`) instead of imperative logic.

