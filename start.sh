#!/bin/bash

docker-compose up -d
docker exec -it redis-cluster-5 redis-cli --cluster create -a Szzf@2022 redis-cluster-0:6380 redis-cluster-1:6381 redis-cluster-2:6382 redis-cluster-3:6383 redis-cluster-4:6384 redis-cluster-5:6385 --cluster-replicas 1