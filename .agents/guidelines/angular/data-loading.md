# Angular Data Loading - Personal Guidelines

These guidelines augment the `angular-http` skill in `.agents/skills/angular-http/`.

## Data Loading Strategy Selection

Choose the right tool based on your needs:

### Use TanStack Query when:
- You need advanced caching strategies
- You want automatic background refetching
- You need complex query dependencies
- You want optimistic updates
- You need request deduplication

### Use `rxResource` when:
- You're already using RxJS observables
- You need custom retry/error handling logic
- You want fine-grained control over the request lifecycle
- You're integrating with existing RxJS streams

### Use `resource` when:
- You have simple data fetching needs
- You want the simplest possible API
- You're using signals throughout your component
- You don't need advanced caching or retries

## Implementation Notes

- All three approaches handle loading states and errors
- For simple cases, prefer `resource` for its simplicity
- For complex state management, TanStack Query is the most powerful
- See the `angular-http` skill for detailed implementation patterns
