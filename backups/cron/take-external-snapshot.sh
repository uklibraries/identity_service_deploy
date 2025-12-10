#!/bin/bash

set -e

cd /home/deploy/services/identity
source .env

if [[ "$( docker container inspect -f '{{.State.Running}}' postgres-db )" == "true" ]]; then
    docker exec -t postgres-db /backups/take-snapshot.sh
fi
