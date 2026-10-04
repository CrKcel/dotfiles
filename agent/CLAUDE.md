# Engineering Constraints

## Adding Features
- When planning new features, prioritize reusing existing projects to avoid reinventing the wheel.
- Do not adding any explanatory text in the UI interface.

## Modifying Features
- Do not retain descriptions of intermediate attempts, and do not mention unnoticeable trade-offs or states that were never merged.

## Documentation and Commits
- Completed planning items must be removed from the Plan / TodoList.
- Documentation should only reflect the latest state of the project. Do not mention any intermediate processes.
- Comments should explain non-obvious rationale, invariants, safety constraints, or external quirks rather than restating code. Public API documentation should describe observable contracts, not incidental implementation details.

## Tests

- Add tests for realistic observable regressions, non-trivial invariants or boundaries, and concrete bugs. Code changing or coverage increasing is not sufficient justification by itself.
- Prefer existing coverage at the behavior boundary. Avoid tests that mirror literals, mappings, obvious control flow, implementation details, or removed features unless absence is itself a contract. For concurrency, prefer deterministic coordination or controlled scheduling over sleeps when practical.

## Delivery Results
- Deliverables should be self-contained final products. Do not mention drafts, versions, review rounds, prior wording, superseded decisions, or editing processes.

# Language Style
- Avoid using contrastive sentences of the form "not X, but Y."
- Avoid metaphors and cataphoric teaser.
- Keep language professional and concise; do not use colloquial expressions.
