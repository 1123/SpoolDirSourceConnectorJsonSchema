# Importing JSON Schema Data with the SpoolDirCsvSource Connector to Kafka

This repository shows a running example on how to import csv data from 
files in the /tmp directory into a local Confluent Platform installation as Json Schema. 

This tutorial is based to a large extend on the following documentation: 

* https://docs.confluent.io/kafka-connectors/spooldir/current/connectors/csv_source_connector.html

## Prerequisites

* A recent Confluent Platform installation. We do not need all services though. The bin directory with the executables should be on your PATH. 
* Java 11 -- may work with more recent versions of Java also
* Linux or Mac command line tools such as curl, cp, jq

## Running the Demo

* install the SpoolDir connectors: `./install-spooldir-connectors.sh`
* start Confluent Platform: `./start-cp.sh`. 
  If you want to run the connector against a secured Kafka cluster or 
  against Confluent Cloud, you would need to adjust the connector 
  configuration and also the configurations of the CLI tools used in 
  this tutorial. 
* make sure that Kafka, Schema Registry and the Connect Cluster are up 
  and running. 
* Take a look at `spooldir.properties` to inspect the connector configuration. 
* load the connector: `./load_connector.sh`
* check that the connector is running: `./get-status.sh`
* check the connect cluster logs for errors: `./get-logs.sh`
* copy some data to /tmp/data: `./copy-data.sh`
* list the topics with `./run-json-schema-consumer.sh`. The topic `spooldir-jsonschema-topic` should have been created. 
* consume the imported data: `./run-json-schema-consumer.sh`
* If any errors are encountered, you may want to look at common errors listed in the file named `errors.txt` together with their resolutions. 
* Cleanup:

  * `./delete-connector.sh`
  * `./delete-topic.sh`



