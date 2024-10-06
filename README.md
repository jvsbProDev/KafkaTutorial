<h1 align="center">Kafka Tutorial - Mac</h1></br>

Go to https://kafka.apache.org/downloads

<img src="./img/kafka_01.png"></br>

+ Binary downloads
+ Download source code `Scala 2.13  - kafka_2.13-3.8.0.tgz (asc, sha512)`

<img src="./img/kafka_29.png"></br>

+ Double-click on the `.tgz` file to extract folder

<img src="./img/kafka_30.png"></br>

+ Under Privileges, drag and drop `kafka_2.13-3.8.0` folder to `opt` directory

<img src="./img/kafka_31.png"></br>

+ Rename to `kafka` folder

<img src="./img/kafka_32.png"></br>

> ~ % **cd /opt/kafka/config**

<img src="./img/kafka_33.png"></br>

> config % **open server.properties**

<img src="./img/kafka_34.png"></br>

#### Uncomment `listeners` and put `localhost` next to port (if will use only on local Desktop)

<img src="./img/kafka_35.png"></br>

> config % **open zookeeper.properties**

<img src="./img/kafka_36.png"></br>

> ~ % **cd /opt/kafka/bin**

#### Start Zookeeper and Kafka server

> ./zookeeper-server-start.sh /opt/kafka/config/zookeeper.properties

<img src="./img/kafka_37.png"></br>

> ./kafka-server-start.sh /opt/kafka/config/server.properties

<img src="./img/kafka_38.png"></br>

#### Create Topic

> ./kafka-topics.sh --create --bootstrap-server localhost:9092 --topic test

<img src="./img/kafka_39.png"></br>

#### Consumer

> ./kafka-console-consumer.sh --topic test --bootstrap-server localhost:9092 --from-beginning

<img src="./img/kafka_40.png"></br>

#### Producer

> ./kafka-console-producer.sh --broker-list localhost:9092 --topic test

Input `Hello World!` message in the `producer` function and press Enter.

<img src="./img/kafka_41.png"></br>

Check the `Hello World!` message in the `consumer` function

<img src="./img/kafka_42.png"></br>

#### Delete Topic
> ./kafka-topics.sh —delete --bootstrap-server localhost:9092 --topic test

#### Stop Kafka and Zookeeper server
> ./kafka-server-stop.sh</br>
> ./zookeeper-server-stop.sh

<img src="./img/kafka_43.png"></br>

Delete the `kafka-logs` and `zookeeper-data` folders from `opt/kafka` directory

<img src="./img/kafka_44.png"></br>