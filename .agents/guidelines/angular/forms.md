# Angular Forms - Personal Guidelines

These guidelines augment the `angular-forms` skill in `.agents/skills/angular-forms/`.

## Validation Rules

- Use Angular's built-in form validation — do not implement validation logic outside of Angular forms
- Never disable the submit button based on `form.invalid`
- The submit button must always be enabled
- Never manually track validation state with custom signals or variables — derive it from the form

## Submit Handling Pattern

On submit:

1. Call `form.markAllAsTouched()` so validation messages appear in the UI
2. Check `form.invalid` — if invalid, return early
3. Proceed with the actual submit logic

```ts
onSubmit() {
  this.form.markAllAsTouched();
  if (this.form.invalid) {
    return;
  }
  // submit logic
}
```

## Form Types

- Angular 21+: use signal-based forms (see `angular-forms` skill)
- For older versions: use reactive forms (`FormGroup`, `FormControl`)
