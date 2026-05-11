# harness-template

中文版本：[`harness-template-cn`](https://github.com/iFurySt/harness-template-cn)

## Intro

An agent-first base repo template for building any product you want.

## Quick Start

Use GitHub's template flow from the top right of this repository:

1. Select **Use this template**.
2. Select [**Create a new repository**](https://github.com/new?template_name=harness-template&template_owner=iFurySt).

Or initialize a new or existing repository with [`harness-cli`](https://github.com/iFurySt/harness-cli).
Install it from npm first:

```sh
npm install -g @ifuryst/harness-cli
```

Then run:

```sh
harness-cli init --language en
```

`harness-cli` requires Node.js 18+ and Go on your `PATH`.

## What You Get

- Agent entry points through `AGENTS.md` and `CLAUDE.md`.
- Repository-local docs for architecture, product sense, frontend, reliability, security, CI/CD, and supply-chain posture.
- Execution-plan, change-history, release-note, and reference-doc scaffolding under `docs/`.
- Baseline CI, release, and supply-chain security workflows with pinned GitHub Actions.
- Small scripts and `make` targets for repo checks, histories, plans, and template initialization.

## First 10 Minutes

1. Replace template placeholders such as `CODEOWNERS`, `docs/ARCHITECTURE.md`, and `docs/product-specs/`.
2. Run `make ci` and keep it as the baseline command agents should use before opening a PR.
3. Add the first real product workflow and acceptance criteria before expanding implementation.
4. Update `docs/QUALITY_SCORE.md` with the weakest areas of the new project so future work has a map.

## License

[MIT](LICENSE)

## Note

This approach comes from our own exploration, while also drawing on some ideas from OpenAI's [harness engineering write-up](https://openai.com/index/harness-engineering/).
