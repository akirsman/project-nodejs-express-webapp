#!/bin/bash
set -e
cd /usr/share/myapp
npm install
echo "modules installed"
pkill nodejs
echo "nodejs processes killed"
nodejs ./app.js &
echo "app started"