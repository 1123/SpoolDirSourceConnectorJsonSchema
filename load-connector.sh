mkdir -p /tmp/data
mkdir -p /tmp/finished
mkdir -p /tmp/error

confluent local services connect connector load spooldir --config spooldir.properties
