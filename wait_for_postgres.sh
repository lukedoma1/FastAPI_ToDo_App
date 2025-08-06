#!/bin/sh

# wait-for-postgres.sh
set -e

host="$DB_HOST"
shift

until pg_isready -h "$host" -U "$POSTGRES_USER"; do
  echo "Waiting for postgres at $host..."
  sleep 1
done

exec "$@"
