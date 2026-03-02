# Agent Code Guidelines

This repository uses the `.agents` directory structure for organizing skills and guidelines.

## Structure

```
.agents/
  skills/          # Technical skills for specific frameworks and tools
  guidelines/      # General coding guidelines and personal preferences
```

## General Guidelines

Located in `.agents/guidelines/` (for reference and documentation):

- [Code Style](./.agents/guidelines/code-style.md) — Function size, control flow, DRY, comments
- File moves: when asked to move files/folders, always use `mv`; do not recreate files. Manually update imports/paths where needed.

**Note:** The Angular-specific guidelines are consolidated into the `angular-preferences` skill for easier loading.
