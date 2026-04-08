# CI/CD Guide

This template ships with repository-level CI/CD scaffolding that is intentionally language-agnostic.

## What Exists By Default

- `ci.yml`: repository checks for docs, hygiene, markdown, and shell validity.
- `supply-chain-security.yml`: dependency review, OSV scanning, SBOM generation, and Scorecard analysis.
- `release.yml`: a workflow-dispatch release scaffold that packages repository metadata, generates provenance attestations, and creates a GitHub release.

## Design Principle

The default workflows prove out the delivery plumbing without pretending to know the real build command for your future project.

You should replace the placeholder packaging step with your product's real build and deployment steps once the stack is known.

All GitHub Actions in the workflows are pinned to commit SHAs. Keep that property when updating actions.

## Recommended Customization Sequence

1. Keep `ci.yml` as the always-on repository gate.
2. Extend `scripts/ci.sh` with project-specific verification.
3. Replace `scripts/release-package.sh` with the real build or publish packaging logic.
4. Add environment-specific deployment jobs after a real runtime and target environment exist.
5. Keep artifact provenance and SBOM generation in place when the build becomes real.

## Release Workflow Output

The default release pipeline produces:

- `release-manifest.json`
- `repo-metadata.tgz`
- `sbom.spdx.json`
- a GitHub artifact attestation for the packaged artifact

This gives downstream consumers a verifiable, reproducible release envelope before product-specific deployment exists.
