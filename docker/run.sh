#!/bin/bash

name=etcd-browser
port=${ETCD_BROWSER_PORT}
docker run --name $name -p 0.0.0.0:$port:$port -it --rm \
  -e "ETCD_HOST=${ETCD_HOST}" \
  -e "ETCD_PORT=${ETCD_PORT}" \
  -e "AUTH_USER=${ETCD_AUTH_USER}" \
  -e "AUTH_PASS=${ETCD_AUTH_PASS}" \
  -e "SERVER_PORT=${ETCD_BROWSER_PORT}" \
  $name
