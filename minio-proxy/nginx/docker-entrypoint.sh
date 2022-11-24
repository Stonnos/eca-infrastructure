#!/usr/bin/env sh
set -eu

envsubst '${NGINX_PORT} ${S3_MINIO_URL}' < /nginx.conf.template > /etc/nginx/nginx.conf

exec "$@"