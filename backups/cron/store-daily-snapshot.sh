#!/bin/bash

set -e

cd /home/deploy/services/identity
source .env

year=$(date '+%Y')
month=$(date '+%m')
day=$(date '+%d')
today="${year}-${month}-${day}"

snapshots="$BACKUPS_DIR/snapshots"
archive="$BACKUPS_DIR/archive/$year/$month"
mkdir -p "$archive"
rsync -aq "$snapshots/iddatabase.sql.0000" "$archive/iddatabase-${today}.sql"
