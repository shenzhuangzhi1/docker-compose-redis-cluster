#!/bin/bash

docker-compose up -d
docker network inspect docker-compose-redis-cluster_redis-cluster
docker exec -it redis-cluster-5 redis-cli --cluster create 172.22.0.4:6380 172.22.0.6:6381 172.22.0.5:6382 172.22.0.2:6383 172.22.0.3:6384 172.22.0.7:6385 --cluster-replicas 1