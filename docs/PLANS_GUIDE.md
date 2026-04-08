# Execution Plans Guide

Use execution plans for tasks that are too large, risky, or stateful to manage through short chat context.

## Create A Plan When

- The task will span multiple commits or working sessions.
- The work has architectural impact or significant migration risk.
- Success depends on staged rollout, validation checkpoints, or decision logging.
- Multiple contributors or agents may touch the same area over time.

## Storage

- Active plans live in `docs/exec-plans/active/`.
- Completed plans move to `docs/exec-plans/completed/`.
- Reusable plan format lives in `docs/exec-plans/templates/execution-plan.md`.
- Ongoing debt and deferred follow-ups live in `docs/exec-plans/tech-debt-tracker.md`.

## Expectations

- State the goal, scope, risks, and validation strategy.
- Keep the implementation log in the repo, not only in chat.
- Update status as decisions change.
- Close or archive stale plans so the active directory stays trustworthy.
