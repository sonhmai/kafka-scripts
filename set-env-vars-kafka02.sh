#!/bin/bash

export KAFKA_HOME = '/opt/kafka_2.11-1.1.1/'
export ZOOKEEPER_SOCKET = '183.80.199.5:2181'
export KAFKA_CONSUMER_GROUP = 'prod_spark_streaming'

echo 'set KAFKA_HOME to $KAFKA_HOME'
echo 'set ZOOKEEPER_SOCKET to $ZOOKEEPER_SOCKET'
echo 'set KAFKA_CONSUMER_GROUP to $KAFKA_CONSUMER_GROUP'
