#!/bin/bash

cd $(dirname $0)

docker push graphadvantage/neo4j-dcos:latest
docker push graphadvantage/neo4j-dcos-proxy:latest

if [ -n "$1" ] && [ -n "$2" ]; then
  if [ "$1" = "neo4j-dcos" ]; then
  	echo "Releaseing neo4j-dcos in version $2"
  	docker tag graphadvantage/neo4j-dcos:latest graphadvantage/neo4j-dcos:$2
  	docker push graphadvantage/neo4j-dcos:$2
  fi
  if [ "$1" = "neo4j-dcos-proxy" ]; then
  	echo "Releaseing neo4j-dcos-proxy in version $2"
  	docker tag graphadvantage/neo4j-dcos-proxy:latest graphadvantage/neo4j-dcos-proxy:$2
  	docker push graphadvantage/neo4j-dcos-proxy:$2
  fi
fi
