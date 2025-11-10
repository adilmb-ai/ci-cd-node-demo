#!/bin/bash
set -e

cat >/etc/systemd/system/nodeapp.service <<'EOF'
[Unit]
Description=Node CI/CD Demo App
After=network.target

[Service]
Type=simple
User=ec2-user
WorkingDirectory=/home/ec2-user/app
Environment=PORT=3000
ExecStart=/usr/bin/node /home/ec2-user/app/server.js
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable nodeapp
