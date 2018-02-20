#!/bin/bash

cd $(dirname $0)

docker build --tag graphadvantage/neo4j-dcos-proxy:1.0.0 .
