#!/bin/bash
set -exo pipefail

npm start &
./scripts/run.sh

RESPONSE=$(curl -k https://localhost:443)

if [ "$RESPONSE" != "Hello, world!" ]; then
  echo "Bad response: $RESPONSE"
  kill $! && ./scripts/stop.sh
  exit 1
else
  echo "It works!"
  kill $! && ./scripts/stop.sh
fi
