# Agent Guidelines

Code guidelines for AI agents working on programming projects.

This repository provides:
- **Skills** — Framework and tool-specific patterns (Angular, NestJS, RxJS, etc.)
- **Guidelines** — General coding principles and personal preferences

## Getting Started

See [AGENTS.md](./AGENTS.md) for the complete index of skills and guidelines.

## Structure

```
.agents/
  skills/          # Technical skills (Angular, NestJS, RxJS, etc.)
  guidelines/      # Coding principles and preferences
.claude/
  skills -> ../.agents/skills   # Claude-compatible adapter to all skills
AGENTS.md          # Complete index and documentation
```

## Usage

Skills are automatically discovered by AI agents that support the `.agents` directory format (Codex, OpenCode, Cursor workflows, CLI tooling).

For Claude-compatible tooling, `.claude/skills` points to `.agents/skills` so the full skill set is exposed without per-skill whitelisting in this repository.

For manual reference, see [AGENTS.md](./AGENTS.md).

## License

MIT License - see [LICENSE](./LICENSE) for details.
