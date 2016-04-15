#!/bin/bash

set -ex

: ${MEDIAWIKI_DB_HOST:=mysql-server}
: ${MEDIAWIKI_DB_PORT:=3306}
export MEDIAWIKI_DB_HOST MEDIAWIKI_DB_PORT 

echo "Using database at $MEDIAWIKI_DB_HOST:$MEDIAWIKI_DB_PORT..."

exec "$@"
