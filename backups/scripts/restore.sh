#!/usr/bin/env bash
set -e

# Prefer the most recent snapshot
if [[ -L /backups/internal-snapshot.sql && -e $(readlink -f /backups/internal-snapshot.sql) ]]; then
    psql -U iduser -d iddatabase -f /backups/internal-snapshot.sql
else
    if [[ -e /backups/iddatabase.sql ]]; then
        psql -U iduser -d iddatabase -f /backups/iddatabase.sql
    fi

    if [[ -e /backups/minter.csv && -e /backups/binder.csv ]]; then
        psql -U iduser -d iddatabase -f /backups/migrate.sql
    fi
fi
