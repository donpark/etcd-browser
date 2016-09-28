#!/bin/bash

name=etcd-browser
docker stop $name
docker rm $name
docker rmi $name
