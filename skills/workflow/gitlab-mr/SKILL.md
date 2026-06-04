---
name: gitlab-mr
description: Work with GitLab merge requests. Use whenever you need to create, update, or interact with a GitLab merge request (MR).
argument-hint: '[--create --update=<mr-id>]'
---

# GitLab MR

Work with GitLab merge requests using the `glab` CLI. You can create MRs, make comments, update the description, review diffs, etc.

## Workflow

This file contains generalized information for working with MRs.

Load additional context based on flags passed by the user:

- [`--create`](./reference/create.md) to create an MR
- [`--update=<mr-id>`](./reference/update.md) to update an MR, where `id` is the MR to update
  - Includes posting comments

## Gotchas

- Always use the `glab` CLI for working with MRs. If it's not installed, alert the user and stop immediately.
