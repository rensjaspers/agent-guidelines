# Agent Code Guidelines

This repository uses the `.agents` directory structure for organizing skills and guidelines.

## Structure

```
.agents/
  skills/          # Technical skills for specific frameworks and tools
  guidelines/      # General coding guidelines and personal preferences
```

## Skills

Skills are specific, actionable knowledge about frameworks, libraries, and tools.

### Angular Skills

Located in `.agents/skills/angular-*/` — these come from the [analogjs/angular-skills](https://github.com/analogjs/angular-skills) package:

| Skill | Description |
|-------|-------------|
| [angular-component](./.agents/skills/angular-component/) | Standalone components, signals, host bindings, accessibility |
| [angular-di](./.agents/skills/angular-di/) | Dependency injection patterns |
| [angular-directives](./.agents/skills/angular-directives/) | Custom directives and host directives |
| [angular-forms](./.agents/skills/angular-forms/) | Signal-based forms API |
| [angular-http](./.agents/skills/angular-http/) | HTTP data fetching with resource() |
| [angular-routing](./.agents/skills/angular-routing/) | Lazy loading, guards, resolvers |
| [angular-signals](./.agents/skills/angular-signals/) | Signal-based reactive state |
| [angular-ssr](./.agents/skills/angular-ssr/) | Server-side rendering |
| [angular-testing](./.agents/skills/angular-testing/) | Unit and integration testing |
| [angular-tooling](./.agents/skills/angular-tooling/) | Angular CLI usage |
| [angular-preferences](./.agents/skills/angular-preferences/) | Personal preferences (MCP, naming, forms, data loading) |

### Other Skills

| Skill | Description |
|-------|-------------|
| [code-review](./.agents/skills/code-review/) | Bug-focused code review checklist |
| [css](./.agents/skills/css/) | Tailwind-first styling |
| [ionic](./.agents/skills/ionic/) | Ionic CLI, components, styling |
| [nestjs](./.agents/skills/nestjs/) | NestJS architecture patterns |
| [nestjs-config](./.agents/skills/nestjs-config/) | ConfigModule setup, explicit imports, validation, fallback pattern |
| [nestjs-logging](./.agents/skills/nestjs-logging/) | Custom logger with ISO timestamps |
| [rxjs](./.agents/skills/rxjs/) | Stream-based state management |
| [typescript](./.agents/skills/typescript/) | Array methods, immutability |

## General Guidelines

Located in `.agents/guidelines/` (for reference and documentation):

- [Code Style](./.agents/guidelines/code-style.md) — Function size, control flow, DRY, comments

**Note:** The Angular-specific guidelines are consolidated into the `angular-preferences` skill for easier loading.
