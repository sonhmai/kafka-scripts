#!/bin/bash

kafka02=183.80.199.4
BROKERPORT=9092
ZKPORT=2181
CDIR=$(pwd)
GROUP_ID=$1
TOPIC=$2

cd /opt/kafka_2.11-0.11.0.0
echo "-------------------"
echo 
bin/kafka-consumer-groups.sh --bootstrap-server $kafka02:$BROKERPORT --group $GROUP_ID --topic $TOPIC --reset-offsets --to-earliest --execute

