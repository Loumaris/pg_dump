#!/bin/bash

set -e

COMMAND=${1:-dump}
PGUSER=${PGUSER:-postgres}
PGDB=${PGDB:-postgres}
PGHOST=${PGHOST:-db}
PGPORT=${PGPORT:-5432}

if [[ "$COMMAND" == 'dump' ]]; then
    exec /dump.sh
else
    echo "Unknown command $COMMAND"
    echo "Available commands: dump"
    exit 1
fi