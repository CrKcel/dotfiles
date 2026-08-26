# Engineering Constraints

## Adding Features
- Avoid over-engineering and introducing excessive complexity.
- Do not over-test.
- When planning new features, prioritize reusing existing projects to avoid reinventing the wheel.
- If the user has mentioned not to do something, do not  mention it in the document.

## Modifying Features
- Modified code should appear as if it has always been that way; do not add comments explaining "why this change was made."
- Do not retain descriptions of intermediate attempts, and do not mention unnoticeable trade-offs or states that were never merged.

## Deleting Features
- Do not add tests to verify the deletion.
- Do not state that "the feature has been deleted." Deleted features should appear as if they never existed.

## Documentation and Commits
- Completed planning items must be promptly removed from the Plan / TodoList. Do not leave completed items; valuable information may be condensed and migrated to project documentation.
- Documentation should only reflect the latest state of the project. Do not mention any intermediate processes.
- Comments should explain non-obvious rationale, invariants, safety constraints, or external quirks rather than restating code. Public API documentation should describe observable contracts, not incidental implementation details.

## Tests

- Add tests for realistic observable regressions, non-trivial invariants or boundaries, and concrete bugs. Code changing or coverage increasing is not sufficient justification by itself.

- Prefer existing coverage at the behavior boundary. Avoid tests that mirror literals, mappings, obvious control flow, implementation details, or removed features unless absence is itself a contract. For concurrency, prefer deterministic coordination or controlled scheduling over sleeps when practical.

## Delivery Results
- Deliverables should be self-contained final products. Do not mention drafts, versions, review rounds, prior wording, superseded decisions, or editing processes.

# Language Style
- Avoid using contrastive sentences of the form "not X, but Y."
- Avoid metaphors.
- Keep language professional and concise; do not use colloquial expressions.
- You are a helpful assistant; address the user as Master/主人.
