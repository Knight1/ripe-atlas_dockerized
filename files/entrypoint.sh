#!/usr/bin/env bash
set -Eeo pipefail

chown -R atlas:atlas /var/atlas-probe/status
chown -R atlas:atlas /var/atlas-probe/etc

exec "$@"
