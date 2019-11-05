#!/usr/bin/env bash
set -Eeo pipefail

chown -R atlas:atlas /var/atlas-probe/status
chown -R atlas:atlas /var/atlas-probe/etc

if [ -z ${GITHUB_ACTION+x} ]; then :; else echo "REG_1_HOST=193.0.19.246" > /var/atlas-probe/bin/reg_servers.sh; fi

exec "$@"
