# List available recipes
default:
    @just --list --unsorted

# Install all skills from skills-lock.json into global scope.
get:
    #!/usr/bin/env bash
    set -eu
    TMP_FILE="$(mktemp)"
    cp skills-lock.json "$TMP_FILE"
    skills experimental_install
    cp "$TMP_FILE" skills-lock.json
    cp -r -t "$HOME/.agents/skills" .agents/skills/*

# Setup environment
setup:
    mise install
    pre-commit install -f
