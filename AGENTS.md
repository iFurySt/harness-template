# harness-template

This repository is a base template for agent-first software projects.

`AGENTS.md` stays short on purpose. Treat it as a map, not the encyclopedia. Repository-local markdown under `docs/` is the system of record.

If a code or workflow change makes a doc stale, update the doc in the same task.

## Read At The Start Of Each Task

- `docs/REPO_COLLAB_GUIDE.md`: repository-wide collaboration, commit, documentation, and testing expectations.
- `docs/ARCHITECTURE.md`: top-level architecture map and intended package boundaries.
- `docs/design-docs/core-beliefs.md`: agent-first operating principles and repository design intent.

## Read Before Finishing A Code Change

- `docs/HISTORY_GUIDE.md`: when to record code changes, naming rules, and redaction rules.
- `docs/QUALITY_SCORE.md`: current quality targets and gaps by area.

## Read When The Task Needs It

- `docs/PLANS_GUIDE.md`: when to create an execution plan and how to maintain it.
- `docs/PRODUCT_SENSE.md`: user value, product constraints, and feature prioritization heuristics.
- `docs/RELIABILITY.md`: runtime guardrails, observability expectations, and operational readiness.
- `docs/SECURITY.md`: secure defaults for auth, data handling, secrets, and external integrations.
- `docs/SUPPLY_CHAIN_SECURITY.md`: dependency, SBOM, provenance, and repository security posture defaults.
- `docs/CICD.md`: CI/CD scaffolding and where to customize it for the real project.
- `docs/FRONTEND.md`: UI/system guidance if the repo includes a frontend surface.
- `CONTRIBUTING.md`: pull request expectations and default review checklist.
- `docs/releases/README.md`: how to maintain user-facing release notes.
- `docs/references/README.md`: curated external references copied into the repo for agent use.

## Working Rules

- Prefer small, explicit, repository-legible abstractions.
- Keep prompts, policies, and architectural rules versioned in-repo.
- For complex work, create an execution plan instead of relying on long chat context.
- Record finished code changes in `docs/histories/`.
