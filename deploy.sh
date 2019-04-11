#!/bin/bash
set -e

cd /home/appuser
echo ${PWD}
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
ps aux | grep puma

