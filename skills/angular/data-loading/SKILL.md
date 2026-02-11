---
name: angular-data-loading
description: Angular data loading patterns using TanStack Query, rxResource, and resource. Use when implementing data fetching, loading states, or error handling in Angular components.
---

# Data Loading

See [AGENTS.md](../../../AGENTS.md) for general guidelines.

---

## Strategy Selection

1. **TanStack Query** — if already installed in the project, use it
2. **`rxResource`** — default for observable-based data loading
3. **`resource`** — default for promise-based data loading

---

## rxResource API Changes

The `rxResource` API changed in Angular 20. For projects on Angular < 20, search the official Angular documentation for the correct API matching the project's version before writing code.

---

## Loading & Error States

- Always provide both a loading template and an error template unless explicitly instructed otherwise
- Never manually track loading or error state with custom signals or variables — derive it from the resource or query
