#!/bin/bash

echo 'need to set env vars: KAFKA_HOME, ZOOKEEPER_SOCKET, KAFKA_CONSUMER_GROUP'
cd $KAFKA_HOME

bin/kafka-consumer-group.sh --zookeeper $ZOOKEEPER_SOCKET --describe --group $KAFKA_CONSUMER_GROUP