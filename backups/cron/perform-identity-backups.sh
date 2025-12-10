#!/bin/bash

set -e

cd /home/deploy/services/identity
source .env

bash backups/cron/take-external-snapshot.sh
bash backups/cron/store-recent-snapshot.sh
