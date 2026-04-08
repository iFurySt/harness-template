# Quality Score

Track quality by product area and architectural layer so agents can prioritize the weakest parts of the system.

## Suggested Scale

- `A`: strong coverage, stable behavior, clear docs, low operational risk.
- `B`: acceptable but still has known gaps.
- `C`: works but needs targeted hardening.
- `D`: fragile or underspecified.

## Initial Template

| Area | Score | Why | Next Step |
| --- | --- | --- | --- |
| Product surface | D | Not yet defined. | Define the first user journey and acceptance criteria. |
| Architecture docs | C | Base scaffold exists but needs project-specific content. | Fill in `docs/ARCHITECTURE.md`. |
| Testing | D | No stack-specific tests yet. | Add a minimal smoke path with one real command. |
| Observability | D | No local stack or conventions yet. | Document logs, metrics, traces, and local access. |
| Security | C | Defaults are documented, implementation is pending. | Add real auth, secret, and dependency rules. |
