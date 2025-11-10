#!/bin/bash
set -e
echo "Stopping nodeapp service if running..."
systemctl stop nodeapp || true
