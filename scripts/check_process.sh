#!/usr/bin/env bash

PROCESS_NAME="${1:-sleep}"

if pgrep -x "$PROCESS_NAME" >/dev/null 2>&1; then

	echo "Process is running: $PROCESS_NAME"
	exit 0

else 

	echo "Process is not running: $PROCESS_NAME" >&2
	exit 1

fi
