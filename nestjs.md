# NestJS-specific Guidelines

These guidelines are specific to NestJS projects. See [AGENTS.md](./AGENTS.md) for general guidelines.

---

## Code Generation

- Use the **NestJS CLI** to generate components whenever possible (modules, services, controllers, resources, etc.).
- This ensures consistent structure and follows NestJS conventions.

---

## Modules

### Global Modules

- **Never** make modules global (using `isGlobal: true`) without explicit approval.
- All dependencies should be explicit — avoid global magic that hides where things come from.
- **Example:** When using the NestJS `ConfigModule`, import it in the `AppModule` but **do not** set `isGlobal: true`.
