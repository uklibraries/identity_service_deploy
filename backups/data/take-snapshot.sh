#!/usr/bin/env bash
set -e

TIMESTAMP=`date +%Y-%m-%d"_"%H_%M_%S`
pg_dump -c -U iduser -d iddatabase -f /backups/snapshots/iddatabase_${TIMESTAMP}.sql

# This snapshot is referenced by the container during shutdown
rm -f /backups/internal-snapshot.sql
ln -s /backups/snapshots/iddatabase_${TIMESTAMP}.sql /backups/internal-snapshot.sql

# This snapshot can be referenced by the host
rm -f /backups/external-snapshot.sql
ln -s snapshots/iddatabase_${TIMESTAMP}.sql /backups/external-snapshot.sql
