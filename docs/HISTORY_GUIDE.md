# Change History Guide

Use `docs/histories/` for finished code-change tasks. Pure Q&A, analysis, and research tasks do not need a history entry unless they result in repository changes.

## Requirements

- Create or update one history file for each completed code-change task.
- Preserve the user request in a concise, useful form.
- Keep sensitive values, local machine paths, and secrets out of the record.
- If a task spans multiple rounds, keep updating the same history file instead of creating duplicates.

## Layout And Naming

- Directory: `docs/histories/YYYY-MM/`
- Filename: `YYYYMMDD-HHmm-task-slug.md`
- Template: `docs/histories/template.md`

Example:

```text
docs/histories/
  2026-04/
    20260408-1430-bootstrap-template.md
```

## What To Include

- The user request or a concise redacted version.
- The main code and documentation changes.
- The design intent and why the chosen approach was taken.
- The most important files touched.
