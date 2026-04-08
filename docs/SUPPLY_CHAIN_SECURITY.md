# Supply Chain Security

This document defines the default supply-chain posture for the template.

## Default Controls

- Dependency diff review on pull requests.
- Vulnerability scanning with OSV on the checked-in dependency manifests and lockfiles present in the repo.
- SBOM generation for release artifacts.
- Build provenance attestations for published release artifacts.
- OpenSSF Scorecard analysis for repository-level security posture.
- GitHub Actions pinned to immutable commit SHAs instead of floating tags.

## Current Workflow Mapping

- `actions/dependency-review-action`: blocks pull requests that introduce vulnerable dependencies.
- `google/osv-scanner-action`: scans the repository for known-vulnerable dependencies based on supported manifests and lockfiles.
- `anchore/sbom-action`: generates an SPDX SBOM artifact.
- `actions/attest-build-provenance`: generates signed build provenance for release artifacts.
- `ossf/scorecard-action`: evaluates repository-level security signals such as branch protection and token permissions.
- `scripts/check-action-pinning.sh`: fails CI if workflow actions are referenced by floating tags instead of immutable SHAs.

## Limits And Assumptions

- Dependency Review is available for public repositories and private repositories with GitHub Advanced Security.
- OSV and SBOM quality depend on the project checking in recognizable manifests or lockfiles.
- Provenance is only meaningful once `scripts/release-package.sh` represents the real build output of the project.
- Scorecard results are strongest when repository rules, branch protection, and signed/reviewed workflows are actually configured.

## What To Do When The Project Becomes Real

- Add ecosystem-specific lockfiles and keep them committed.
- Make the build deterministic and produce explicit versioned artifacts.
- Gate production deployment on release artifact provenance verification when possible.
- Consider verifying attestations in the deployment environment or cluster admission layer.
