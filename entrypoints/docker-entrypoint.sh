#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi
echo "MySQL is up and running!"
bundle exec rake db:drop db:create db:migrate
bundle exec rails s -b 0.0.0.0