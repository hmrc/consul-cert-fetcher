#!/bin/bash

set -euo pipefail

mkdir -p /consul/certs
echo "$ZONE_WILDCARD_CERT" | base64 -d > /consul/certs/zone-wildcard.pem
echo "$ZONE_WILDCARD_KEY"| base64 -d > /consul/certs/zone-wildcard.key

echo "Zone wildcard certificate and key have been written to /consul/certs/"
