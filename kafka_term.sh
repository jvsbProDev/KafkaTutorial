#!/bin/bash

# Start Zookeeper
osascript -e 'tell application "Terminal" to do script "cd /opt/kafka && ./bin/zookeeper-server-start.sh ./config/zookeeper.properties"'

# Wait for 15 seconds
sleep 15

# Start Kafka broker
osascript -e 'tell application "Terminal" to do script "cd /opt/kafka && ./bin/kafka-server-start.sh ./config/server.properties"'

# Wait for 15 seconds
sleep 15

# Create Kafka topic
osascript -e 'tell application "Terminal" to do script "cd /opt/kafka/bin && ./kafka-topics.sh --create --bootstrap-server localhost:9092 --topic test"'

# Wait for 15 seconds
sleep 15

# Start Kafka consumer
osascript -e 'tell application "Terminal" to do script "cd /opt/kafka/bin && ./kafka-console-consumer.sh --topic test --bootstrap-server localhost:9092 --from-beginning"'

# Wait for 15 seconds
sleep 15

# Start Kafka producer
osascript -e 'tell application "Terminal" to do script "cd /opt/kafka/bin && ./kafka-console-producer.sh --broker-list localhost:9092 --topic test"'

# osascript is used to send commands to the macOS Terminal app, opening new tabs/windows as required. Each osascript command opens a new Terminal window/tab.
# The exec bash at the end of each command ensures the terminal stays open after executing the command.
