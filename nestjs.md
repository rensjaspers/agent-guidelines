# NestJS-specific Guidelines

These guidelines are specific to NestJS projects. See [AGENTS.md](./AGENTS.md) for general guidelines.

---

## Code Generation

- Use the **NestJS CLI** to generate components whenever possible (modules, services, controllers, resources, etc.).
- This ensures consistent structure and follows NestJS conventions.

---

## Architecture & Dependency Injection

- **Always follow NestJS architecture** — never go outside the NestJS way of doing things.
- Everything must be idiomatic NestJS. If you're not sure, **check the NestJS documentation** to see if there's a NestJS way to do it.
- **Use NestJS Dependency Injection heavily** — it's the core of how NestJS works.
- **Wrap external libraries in injectable services** for simplicity and testability. Don't use libraries directly — create a service that wraps them.

---

## Modules

### Global Modules

- **Never** make modules global (using `isGlobal: true`) without explicit approval.
- All dependencies should be explicit — avoid global magic that hides where things come from.
- **Example:** When using the NestJS `ConfigModule`, import it in the `AppModule` but **do not** set `isGlobal: true`.

### Circular Dependencies

- **Never** create circular dependencies or use `forwardRef()` without explicit approval.
- Circular dependencies indicate a design flaw and make code harder to understand and maintain.
- If you encounter a need for circular references, refactor to break the cycle instead.
