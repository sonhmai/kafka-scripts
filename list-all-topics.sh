#!/bin/bash

kafka02=183.80.199.4
BROKERPORT=9092
ZKPORT=2181
CDIR=$(pwd)
cd /opt/kafka_2.11-0.11.0.0
echo "-----LIST ALL TOPICS IN CLUSTER VIA ZK------"
echo 
bin/kafka-topics.sh --zookeeper $kafka02:$ZKPORT --list

