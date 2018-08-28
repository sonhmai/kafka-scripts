#!/bin/bash

kafka02=183.80.199.4
BROKERPORT=9092
ZKPORT=2181
TOPIC=__consumer_offsets
CDIR=$(pwd)
cd /opt/kafka_2.11-0.11.0.0
echo "--------console-consumer of committed_offset topic----------"
echo 
bin/kafka-console-consumer.sh --bootstrap-server $kafka02:$BROKERPORT --topic $TOPIC --from-beginning
