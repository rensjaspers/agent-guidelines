# TypeScript-specific Guidelines

See [AGENTS.md](./AGENTS.md) for general guidelines.

---

## Arrays

- Prefer array methods (`map`, `filter`, `reduce`) over manual loops
- Use immutable methods — return new arrays, don't mutate

---

## Before Finishing

- No type errors: `npx tsc --noEmit`
