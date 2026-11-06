#!/usr/bin/env bash

BACKUP_DIR="${1:-$HOME/backups}"

if mkdir -p -- "$BACKUP_DIR"; then

    echo "Backup directory created or already exists:"
    echo "$BACKUP_DIR"

else

    echo "Failed to create backup directory" >&2
    exit 1

fi
