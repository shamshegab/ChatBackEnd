#!/bin/sh

set -e

# if [ -f tmp/pids/server.pid ]; then
#   rm tmp/pids/server.pid
# fi

echo "starting sidekiq"
# bundle exec sidekiq -q indexer -q default -verbose