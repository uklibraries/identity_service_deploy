#!/bin/bash

set -e

cd /home/deploy/services/identity
source .env

if [[ -L backups/data/external-snapshot.sql && -e $(readlink -f backups/data/external-snapshot.sql) ]]; then
    # rotate old backups
    snapshots="$BACKUPS_DIR/snapshots"
    cd "$snapshots"
    backup_count=336
    max=$(printf "%03d" $(expr "$backup_count" - 1))
    for n in $(seq -w "$max" -1 0); do
        np=$(printf "%03d" $(expr "$n" + 1))
        if [ ! -e "iddatabase.sql.$n" ]; then
            touch "iddatabase.sql.$n"
        fi
        mv "iddatabase.sql.$n" "iddatabase.sql.$np"
    done

    # store recent backup
    cd /home/deploy/services/identity
    rsync -aq $(readlink -f backups/data/external-snapshot.sql) "$snapshots/iddatabase.sql.000"
fi
