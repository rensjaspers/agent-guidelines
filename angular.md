# Angular-specific Guidelines

These guidelines are specific to Angular projects. See [AGENTS.md](./AGENTS.md) for general guidelines.

---

## Angular Practices

- Use the **modern template syntax** (`@if`, `@for`) instead of legacy `*ngIf` / `*ngFor`.
- Prefer **signals** for inputs, outputs, and `viewChild`; avoid legacy decorators.
- Don't use lifecycle hooks like `ngOnInit` or `ngOnDestroy` unless strictly needed — signals and field initializers usually replace them.
- When subscribing, do it in the constructor and clean up automatically:

  ```ts
  obs$.pipe(takeUntilDestroyed()).subscribe();
  ```

### Signals & RxJS Interop

- **Never use `effect()`** without explicit approval — it's dangerous and only for exceptional cases.
- With **async RxJS streams**, don't convert to signals too early. Keep everything in RxJS and only convert at the very end for template consumption.
- **`computed()`** only works with **synchronous** values — not async observable streams. Use `toSignal()` only in injection context or class instantiation, never on the fly. Remember: observables are lazy, but `toSignal()` causes immediate subscription. If that's not desired, use the `async` pipe on observables in templates or `rxResource` with undefined request (check docs if needed).
- **Always read the latest online Angular Signals and RxJS Interop documentation** before working with either.

---

## Build & Quality Gates

Before finishing, ensure:

- A successful **production (AOT)** build without easy-to-fix warnings
