#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "usage: $0 <project-name>" >&2
  exit 1
fi

project_name="$1"
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

perl -0pi -e "s/harness-template/${project_name}/g" \
  "${repo_root}/README.md" \
  "${repo_root}/AGENTS.md"

echo "initialized template naming for: ${project_name}"
echo "next: update docs/ARCHITECTURE.md and docs/product-specs/ for the real project"
