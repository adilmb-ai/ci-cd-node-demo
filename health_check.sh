#!/bin/bash
set -e
echo "Health check hitting localhost:3000 ..."
curl -fsS http://localhost:3000/ > /dev/null
echo "Health check OK"
