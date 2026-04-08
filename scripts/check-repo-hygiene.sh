#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  ".gitignore"
  ".editorconfig"
  ".gitattributes"
  "CODEOWNERS"
  "CONTRIBUTING.md"
  "SECURITY.md"
  ".github/PULL_REQUEST_TEMPLATE.md"
  ".github/dependency-review-config.yml"
  ".github/ISSUE_TEMPLATE/bug_report.yml"
  ".github/ISSUE_TEMPLATE/feature_request.yml"
  ".github/ISSUE_TEMPLATE/config.yml"
  ".github/workflows/ci.yml"
  ".github/workflows/docs-check.yml"
  ".github/workflows/repo-hygiene.yml"
  ".github/workflows/release.yml"
  ".github/workflows/supply-chain-security.yml"
  ".markdownlint.json"
  "scripts/check-action-pinning.sh"
)

failed=0

for path in "${required_files[@]}"; do
  if [[ ! -f "${repo_root}/${path}" ]]; then
    echo "missing required file: ${path}"
    failed=1
  fi
done

if grep -q $'\r' "${repo_root}/README.md"; then
  echo "README.md contains CRLF line endings"
  failed=1
fi

if ! grep -q "make check-docs" "${repo_root}/CONTRIBUTING.md"; then
  echo "CONTRIBUTING.md should mention make check-docs"
  failed=1
fi

if [[ "${failed}" -ne 0 ]]; then
  exit 1
fi

echo "repo hygiene check passed"
