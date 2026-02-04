# Agent Code Guidelines

## By Topic

- [Angular](./angular.md)
- [Code Review](./code-review.md)
- [CSS](./css.md)
- [Ionic](./ionic.md)
- [NestJS](./nestjs.md)
- [RxJS](./rxjs.md)
- [TypeScript](./typescript.md)

---

## Style Rules

- Functions ≤ 10 lines; classes ≤ 300 lines — refactor if larger
- Always use curly braces with `if` statements
- Avoid complex ternaries — except in templates
- Use early returns to reduce nesting

---

## DRY (pragmatic)

Do not write new logic before checking if it already exists. Do not force abstractions just to be DRY, but avoid structural duplication by reusing existing functions or patterns when it makes sense.

---

## Comments — Almost Never

**Do NOT write comments.** Code should be self-explanatory.

The only valid exceptions:

- Workarounds for buggy third-party APIs
- Warnings about non-obvious side effects or constraints
- Legal/compliance requirements
- `TODO`/`FIXME` with issue reference

If code needs a comment to be understood, **rewrite the code** instead.

---

## Before Finishing

- No type errors
- No lint errors
- All tests pass
