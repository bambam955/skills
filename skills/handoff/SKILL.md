---
name: handoff
description: Compact the current conversation into a handoff document for another agent to pick up.
---

Write a handoff document summarizing the current conversation so a fresh agent can continue the work. Closely follow `assets/template.md` for document structure.

Ask for clarity, if needed, on:

- Goal for the new thread (default: implement plan)
- Specific context/decisions that should be emphasized (default: max 10 major design points)
- Relevant files to link in the doc (default: max 5 heavily modified files)

Info to include that's not expressly listed in `assets/template.md`:

- Changes/work that was WIP at time of handoff
- Necessary config/setup details relevant to task at hand

Do not duplicate content already captured in other artifacts (PRDs, plans, ADRs, issues, commits, diffs). Reference them by path or URL instead.
Avoid summarizing/over-generalized to the point that key context from the current thread is lost.

Save to a `PLAN.md` file in the current workspace, unless the user passed `--file=<path>`, in which case save to that filepath.

If the user passed other args, treat them as a description of what the next session will focus on and tailor the doc accordingly.

## Gotchas

- Do not provide absolute file paths, in case a user wants to give the plan to someone else
- Leave out any sensitive information (API keys, passwords, personal identifiers)
