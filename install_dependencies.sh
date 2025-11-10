#!/bin/bash
set -e
cd /home/ec2-user/app
echo "Installing Node deps..."
npm ci || npm install
