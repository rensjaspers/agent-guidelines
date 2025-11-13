# TypeScript-specific Guidelines

These guidelines are specific to TypeScript projects. See [AGENTS.md](./AGENTS.md) for general guidelines.

---

## Arrays & Iteration

- Prefer **array methods** (`map`, `filter`, `reduce`, etc.) over manual loops.
- Avoid mutating arrays — use **immutable methods** that return a new array instead of changing the original.
- Keep transformations **simple and readable** — no one-liners just to look smart.

---

## Build & Quality Gates

Before finishing, ensure:

- No type errors (`npx tsc --noEmit`)
