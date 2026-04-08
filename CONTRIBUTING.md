# Contributing

This repository is designed for agent-first development, but the same rules apply to humans and bots.

## Working Agreement

- Start from `AGENTS.md`, then read the linked docs that match the task.
- Keep repository knowledge in versioned files, not only in chat or ticket comments.
- If behavior changes, update code, docs, tests, and release/history records together.
- For large or risky work, create an execution plan under `docs/exec-plans/active/`.

## Before Opening A Pull Request

- Run `make check-docs`.
- Add or update a history entry if the task changed repository code or workflow.
- Update release notes when the change is user-visible.
- Verify examples and scripts still match the current behavior.

## Review Expectations

- Prefer small, scoped pull requests.
- Call out risks, migrations, and deferred follow-ups explicitly.
- Link to the relevant plan, spec, or history file when context is important.
