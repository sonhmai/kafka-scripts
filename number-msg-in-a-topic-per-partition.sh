#!/bin/bash

kafka02=183.80.199.4
BROKERPORT=9092
ZKPORT=2181
CDIR=$(pwd)
TOPIC=$1
cd /opt/kafka_2.11-0.11.0.0
echo "-------------------"
echo
bin/kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list $kafka02:$BROKERPORT --topic $TOPIC --time -1 --offsets 1









