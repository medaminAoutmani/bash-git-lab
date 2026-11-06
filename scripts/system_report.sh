#!/usr/bin/env bash

PROJECT_DIR="${1:-$HOME/production-ml-foundations}"

check_directory() {

    local path="$1"

    if [[ -d "$path" ]]; then
        echo "Project directory: OK"
    else
        echo "Project directory: MISSING"
        return 1
    fi
}

check_tools() {

    local tool

    for tool in python3 git ssh; do

        if command -v "$tool" >/dev/null 2>&1; then
            echo "$tool: installed"
        else
            echo "$tool: missing"
        fi

    done
}

check_directory "$PROJECT_DIR" || exit 1

check_tools

echo "System report completed."
