#!/bin/bash

cd $(dirname $0)

docker build --tag graphadvantage/neo4j-dcos:1.0.0-3.3.2 .
