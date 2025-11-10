#!/bin/bash
set -e
echo "Starting nodeapp service..."
systemctl start nodeapp
systemctl status nodeapp --no-pager || true
