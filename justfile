# List available recipes
default:
    @just --list --unsorted

# Install all skills, both local and remote.
get:
    skills experimental_install

gen-locks:
    #!/usr/bin/env bash
    echo -n "workflow/gitlab-mr: "
    find ./skills/workflow/gitlab-mr/ -type f | sort | xargs cat | shasum -a 256 | awk '{print $1}'

# Setup environment
setup:
    mise install
    pre-commit install -f
