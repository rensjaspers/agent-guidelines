---
name: nestjs
description: NestJS development guidelines covering CLI generation, architecture patterns, and module design. Use when writing or modifying NestJS backend code, modules, or services.
---

# NestJS

See [AGENTS.md](../../AGENTS.md) for general guidelines.

---

## Code Generation

Use the NestJS CLI to generate modules, services, controllers, and resources.

---

## Architecture

- Always follow idiomatic NestJS patterns — check docs if unsure
- Wrap external libraries in injectable services

---

## Modules

**Never without explicit approval:**

- Global modules (`isGlobal: true`) — keep dependencies explicit
- Circular dependencies / `forwardRef()` — refactor to break the cycle

**Keep modules focused** — split when responsibilities grow.
