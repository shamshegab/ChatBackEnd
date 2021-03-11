#! /bin/sh

# Wait for DB services
sh ./config/docker/wait-for-services.sh

# Prepare DB (Migrate - If not? Create db & Migrate)
sh ./config/docker/prepare-db.sh

# Pre-comple app assets
#sh ./config/docker/asset-pre-compile.sh

# Start Application


bundle exec rails s -b 0.0.0.0 & bundle exec sidekiq -q indexer -q default