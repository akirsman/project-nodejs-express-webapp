#!/bin/bash
set -e
cd /usr/share/myapp
npm install
echo "modules installed"
if pgrep nodejs; then pkill nodejs; fi
echo "nodejs processes killed"
nodejs ./app.js > /dev/null 2> /dev/null < /dev/null &
echo "app started"