#!/usr/bin/env bash

TARGET_DIR="${1:-$HOME/production-ml-foundations}"

if [[ -d "$TARGET_DIR" ]]; then

	echo "Directory exists: $TARGET_DIR"
	exit 0

else

	echo "Directory not found: $TARGET_DIR" >&2
	exit 1

fi
