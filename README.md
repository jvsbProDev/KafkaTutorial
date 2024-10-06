<h1 align="center">Kafka Tutorial - Windows</h1></br>

Go to https://kafka.apache.org/downloads

<img src="./img/kafka_01.png"></br>

+ Binary downloads
+ Download source code `Scala 2.13  - kafka_2.13-3.8.0.tgz (asc, sha512)`

<img src="./img/kafka_02.png"></br>

+ Extract `kafka_2.13-3.8.0.tgz`

<img src="./img/kafka_03.png"></br>

+ Copy and paste `kafka_2.13-3.8.0` folder to Drive `C:`

<img src="./img/kafka_04.png"></br>

+ Rename `kafka_2.13-3.8.0` folder to `kafka`

<img src="./img/kafka_05.png"></br>

In the `C:\kafka\config` directory, you will find all the configuration of the **server** and **zookeper** with the extension of `.properties` in its' file name

<img src="./img/kafka_06.png"></br>

In `server.properties`, provide the path where **kafka** folder is extracted in `log.dirs`

<img src="./img/kafka_07.png"></br>

Put in `c:/kafka/kafka-logs` as the `log.dirs` path

<img src="./img/kafka_08.png"></br>

Uncomment `listeners` and put `localhost` next to port (if will use only on local Desktop)

<img src="./img/kafka_09.png"></br>

<img src="./img/kafka_10.png"></br>

In `zookeeper.properties`, provide the path for the data directory in `dataDir`

<img src="./img/kafka_11.png"></br>

Put in `c:/kafka/zookeeper-data` as the `dataDir` path</br>
Zookeeper is also required to enable to run the kafka server, will act as a resource manager for the server

<img src="./img/kafka_12.png"></br>

Go to `C:\kafka` directory, **Ctrl + L** to highlight the URL bar

<img src="./img/kafka_13.png"></br>

And enter `cmd` in the field, press Enter to open the `Command Prompt` located to the `C:\kafka` directory

<img src="./img/kafka_14.png"></br>

Run the **Zookeeper** server and provide its' configuration using the following code :
> .\bin\windows\zookeeper-server-start.bat .\config\zookeeper.properties

<img src="./img/kafka_15.png"></br>

Zookeeper has started. **Do not close** the window while running the zookeeper

<img src="./img/kafka_16.png"></br>

Run the **Kafka** server and provide its' configuration using the following code :
> .\bin\windows\kafka-server-start.bat .\config\server.properties

<img src="./img/kafka_17.png"></br>

Kafka has started. **Do not close** the window while running the kafka

<img src="./img/kafka_18.png"></br>

Executable files are in Shell script found in `C:\kafka\bin` directory</br>
Windows batch files can be found in `C:\kafka\bin\windows` directory

<img src="./img/kafka_19.png"></br>

Go to `C:\kafka\bin\windows` directory, **Ctrl + L** to highlight the URL bar</br>
And enter `cmd` in the fields, press Enter to open the `Command Prompt` located to the `C:\kafka\bin\windows` directory

<img src="./img/kafka_20.png"></br>

`Topic` is a table in a relational database</br>
But in topic, the data can be a flexible schema but stores data in a **json format**

`Bootstrap` server provide the **localhost** name and **port** number by which communicate with the kafka cluster.</br>
Kafka uses port `9092` by default.

Create a `test` topic on the kafka server using the following command :
> kafka-topics.bat --create --bootstrap-server localhost:9092 --topic test

<img src="./img/kafka_21.png"></br>

Run the `producer` function using the following command :
> kafka-console-producer.bat --broker-list localhost:9092 --topic test

<img src="./img/kafka_22.png"></br>

Run the `consumer` function using the following command :
> kafka-console-consumer.bat --topic test --bootstrap-server localhost:9092 --from-beginning

<img src="./img/kafka_23.png"></br>

Input `Hello World!` message in the `producer` function and press Enter.

<img src="./img/kafka_24.png"></br>

Check the `Hello World!` message in the `consumer` function 

<img src="./img/kafka_25.png"></br>

Delete the `test` topic

> kafka-topics.bat --delete --bootstrap-server localhost:9092 --topic test

<img src="./img/kafka_26.png"></br>

Stop **Kafka** and **Zookeeper** server

> .\bin\windows\kafka-server-stop.bat .\config\server.properties </br>
> .\bin\windows\zookeeper-server-stop.bat .\config\zookeeper.properties

<img src="./img/kafka_27.png"></br>

Delete the `kafka-logs` and `zookeeper-data` folders from `C:\kafka` directory

<img src="./img/kafka_28.png"></br>