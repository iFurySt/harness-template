# Architecture

This file is the top-level map for the repository. Replace the placeholders below as the real project takes shape.

## Intended Repository Shape

- `apps/`: deployable applications or entry points.
- `packages/`: shared libraries and contracts.
- `infra/`: deployment, infrastructure, and environment definitions.
- `scripts/`: repository automation that agents can run directly.
- `docs/`: the repository knowledge base and system of record.

## Boundary Rules

- Put business logic in reusable packages before spreading it across apps.
- Keep infrastructure and runtime orchestration explicit and versioned.
- Avoid hidden cross-package coupling; document allowed dependency directions once the stack is real.
- When the architecture changes, update this file in the same task.

## To Fill In For A New Project

- Primary product surfaces and runtime topology.
- Package layering and import boundaries.
- Data flow and persistence model.
- Observability stack and local development model.
