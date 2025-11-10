#!/bin/bash
set -e

APP_DIR="/home/ec2-user/simple-app"

pkill -f "python3 -m http.server 3000" || true

cd $APP_DIR

nohup python3 -m http.server 3000 >/dev/null 2>&1 &
echo "Server started on port 3000"
