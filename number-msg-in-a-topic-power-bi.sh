#!/bin/bash

kafka02=183.80.199.4
BROKERPORT=9092
ZKPORT=2181
CDIR=$(pwd)
TOPIC=$1
cd /opt/kafka_2.11-0.11.0.0
echo "-------------------"
echo
total=$(bin/kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list $kafka02:$BROKERPORT --topic $TOPIC --time -1 --offsets 1 | awk -F ":" '{sum += $3} END {print sum}')
timestamp=$(date  "+%Y-%m-%dT%H:%M:%S")
echo total message = $total

curl --include \
--request POST \
--header "Content-Type: application/json" \
--data-binary "[
{
\"timestamp\" :\"$timestamp\",
\"topic\" :\"$TOPIC\",
\"value\" :$total
}
]" \
"https://api.powerbi.com/beta/658d257f-4608-4ae9-85f3-61f7e4628c97/datasets/1bac7bd2-0f8c-42e0-9acc-6324a51c8cd5/rows?key=dngGqq2hUzDXqiUcnoRm3j3MeeUOhJ8G0Q0z%2FH6XEsb2XszxG4kU%2FWjp1xwmrESGXtcrcAA%2FniGlkNRC5Go%2BZQ%3D%3D"









