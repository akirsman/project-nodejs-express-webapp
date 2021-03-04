#!/bin/bash
set -e
cd /usr/share/myapp
npm install
echo "modules installed"
if pgrep nodejs; then pkill nodejs; fi
echo "nodejs processes killed"
nodejs ./app.js &
echo "app started"
exit 0