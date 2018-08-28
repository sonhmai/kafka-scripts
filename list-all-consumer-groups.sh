#!/bin/bash

kafka02=183.80.199.4
BROKERPORT=9092
ZKPORT=2181
CDIR=$(pwd)
cd /opt/kafka_2.11-0.11.0.0
echo "----------non Zookeeper-based consumer groups(Java Consumer API)----------"
echo 
bin/kafka-consumer-groups.sh --bootstrap-server $kafka02:$BROKERPORT --list
echo "--------zookeeper-based Consumer groups---------------"
echo
bin/kafka-consumer-groups.sh --zookeeper $kafka02:$ZKPORT --list






