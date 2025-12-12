#!/bin/bash

set -e

cd /home/deploy/services/identity
source .env

if [[ -L backups/data/external-snapshot.sql && -e $(readlink -f backups/data/external-snapshot.sql) ]]; then
    # rotate old backups
    snapshots="$BACKUPS_DIR/snapshots"
    cd "$snapshots"
    # 2016 = 2 * 7 * 24 * 6
    #  - 2 weeks
    #  - 7 days a week
    #  - 24 hours a day
    #  - 6 times an hour (every 10 minutes)
    backup_count=2016
    max=$(printf "%04d" $(expr "$backup_count" - 1))
    for n in $(seq -w "$max" -1 0); do
        np=$(printf "%04d" $(expr "$n" + 1))
        if [ ! -e "iddatabase.sql.$n" ]; then
            touch "iddatabase.sql.$n"
        fi
        mv "iddatabase.sql.$n" "iddatabase.sql.$np"
    done

    # store recent backup
    cd /home/deploy/services/identity
    rsync -aq $(readlink -f backups/data/external-snapshot.sql) "$snapshots/iddatabase.sql.0000"
fi
