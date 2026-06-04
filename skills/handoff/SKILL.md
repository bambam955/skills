---
name: handoff
description: Compact the current conversation into a handoff document for another agent to pick up. Use when requested by a user, when the current thread would be best carried out in a fresh thread, or when the context window is getting too full.
---

# Handoff

Write a handoff document summarizing the current conversation so a fresh agent can continue the work. Closely follow [the template](./templates/handoff.md.template) for document structure.

## Workflow

1. Ask for clarity, if needed, on any of the following:
   - Goal for the new thread (default: implement the plan)
   - Specific context/decisions to emphasize (default: max of 5 major points)
   - Relevant files to link in the doc (default: max of 5 heavily modified files)
2. Compact the current conversation into a concise, actionable summary document. Follow [this template](./templates/handoff.md.template).
   - Ensure all clarified points are included.
   - If any code changes/other work was WIP at time of handoff, it should be included/referenced.
   - Include any config/setup details relevant to the task at hand.
3. Save the document to `PLAN.md` (or user-set path if `--file=<path>` was passed).

## Guidelines

Do not duplicate content already captured in other artifacts (PRDs, plans, ADRs, issues, commits, diffs). Reference them by path or URL instead.
Avoid summarizing/over-generalized to the point that key context from the current thread is lost.

If the user passed additional args, treat them as a description of what the next thread will focus on and tailor the doc accordingly.

## Output

A single `PLAN.md` file in the current workspace. The filepath can be overridden if the user passes `--file=<path>` as an argument.

## Gotchas

- Do not include absolute file paths, in case a user wants to give the plan to someone else
- Leave out any sensitive information (API keys, passwords, personal identifiers)
