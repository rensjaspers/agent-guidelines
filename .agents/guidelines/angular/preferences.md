# Personal Angular Guidelines

Additional guidelines that complement the Angular skills in `.agents/skills/`.

## Angular MCP Server

Always use the Angular MCP server instead of direct shell commands.

**Workflow:**

1. `get_best_practices` with `workspacePath` — before writing code
2. `search_documentation` — for conceptual questions

## Modern Angular Constraints

- Prefer signals for inputs, outputs, `viewChild` — avoid legacy decorators
- Avoid lifecycle hooks (`ngOnInit`, `ngOnDestroy`) — signals and field initializers usually suffice
- Subscribe in constructor with cleanup:

  ```ts
  obs$.pipe(takeUntilDestroyed()).subscribe();
  ```

## Naming Conventions

**No type suffixes** — describe responsibility, not technical type:

- ❌ `UserService` → ✅ `UserRepository`, `UserStore`, `Authentication`
- ❌ `ModalComponent` → ✅ `Modal`, `Dialog`

## Signals & RxJS Interop

- **Never use `effect()`** without explicit approval
- Don't convert RxJS to signals too early — convert at the end for templates
- `computed()` is synchronous only — not for async streams
- `toSignal()` only in injection context (causes immediate subscription)
- Check latest Angular docs before working with signals/RxJS interop

## Before Finishing

- Successful production (AOT) build without warnings
