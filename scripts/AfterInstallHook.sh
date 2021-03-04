#!/bin/bash
set -e
cd /usr/share/myapp
npm install
pkill nodejs
nodejs ./app.js &