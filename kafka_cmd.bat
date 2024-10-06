@echo off
REM Start Zookeeper
start cmd /k "cd /d C:\kafka && .\bin\windows\zookeeper-server-start.bat .\config\zookeeper.properties"

:: Wait for 15 seconds
timeout /t 15 /nobreak

REM Start Kafka broker
start cmd /k "cd /d C:\kafka && .\bin\windows\kafka-server-start.bat .\config\server.properties"

:: Wait for 15 seconds
timeout /t 15 /nobreak

REM Create Kafka topic
start cmd /k "cd /d C:\kafka\bin\windows && kafka-topics.bat --create --bootstrap-server localhost:9092 --topic test"

:: Wait for 15 seconds
timeout /t 15 /nobreak

REM Start Kafka consumer
start cmd /k "cd /d C:\kafka\bin\windows && kafka-console-consumer.bat --topic test --bootstrap-server localhost:9092 --from-beginning"

:: Wait for 15 seconds
timeout /t 15 /nobreak

REM Start Kafka producer
start cmd /k "cd /d C:\kafka\bin\windows && kafka-console-producer.bat --broker-list localhost:9092 --topic test"