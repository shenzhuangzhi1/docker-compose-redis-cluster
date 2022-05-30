#!/bin/bash

docker-compose up -d
docker network ls
docker network inspect [docker-compose-redis-cluster_redis-cluster id]
docker exec -it redis-cluster-5 redis-cli --cluster create 172.21.0.2:6380 172.21.0.3:6381 172.21.0.4:6382 172.21.0.5:6383 172.21.0.6:6384 172.21.0.7:6385 --cluster-replicas 1 -a Szzf@2022