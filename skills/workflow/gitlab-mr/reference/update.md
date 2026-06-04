# Update an MR

This document explains how to update a GitLab merge request that was already created.

## Workflow

Remember that the ID of the MR to update was passed as an argument by me.

### Update description

1. Create a temp file.
2. Fetch the current description and write to the temp file: `glab mr view <id> --output=json --jq '.description' > <tmp-filepath>`
3. Edit the description as needed.
4. Post the edited description: `glab mr update <id> -y --description "$(cat <path-to-desc-file>)"`
5. Verify the update was successful: `glab mr view <id>`

### Post a comment

1. Create a temp file with the contents of the comment.
2. Post the comment: `glab mr note create <id> -m "$(cat <path-to-tmpfile>)"`
3. Verify the comment was made: `glab mr note list --state=unresolved`.
