#!/bin/bash
set -e

curl -fsS http://localhost:3000 > /dev/null
echo "Health check passed"
