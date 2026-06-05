# List available recipes
default:
    @just --list --unsorted

# Install all skills, both local and remote.
get:
    #!/usr/bin/env bash
    TMP_FILE="$(mktemp)"
    cp skills-lock.json "$TMP_FILE"
    skills experimental_install
    cp "$TMP_FILE" skills-lock.json

# Setup environment
setup:
    mise install
    pre-commit install -f
