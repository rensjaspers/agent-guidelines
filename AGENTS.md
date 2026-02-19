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

**Personal Angular Preferences:**
- [Angular Preferences](./.agents/guidelines/angular/preferences.md) — MCP server, naming, signals/RxJS rules
- [Angular Forms](./.agents/guidelines/angular/forms.md) — Submit patterns, validation rules
- [Angular Data Loading](./.agents/guidelines/angular/data-loading.md) — Strategy selection guide

### Other Skills

| Skill | Description |
|-------|-------------|
| [code-review](./.agents/skills/code-review/) | Bug-focused code review checklist |
| [css](./.agents/skills/css/) | Tailwind-first styling |
| [ionic](./.agents/skills/ionic/) | Ionic CLI, components, styling |
| [nestjs](./.agents/skills/nestjs/) | NestJS architecture patterns |
| [rxjs](./.agents/skills/rxjs/) | Stream-based state management |
| [typescript](./.agents/skills/typescript/) | Array methods, immutability |

## General Guidelines

Located in `.agents/guidelines/`:

- [Code Style](./.agents/guidelines/code-style.md) — Function size, control flow, DRY, comments
