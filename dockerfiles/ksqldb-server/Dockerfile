FROM alpine:latest AS build

ADD https://d1i4a15mxbxib1.cloudfront.net/api/plugins/confluentinc/kafka-connect-elasticsearch/versions/10.0.2/confluentinc-kafka-connect-elasticsearch-10.0.2.zip /tmp/
ADD https://repo1.maven.org/maven2/io/debezium/debezium-connector-mysql/1.3.1.Final/debezium-connector-mysql-1.3.1.Final-plugin.tar.gz /tmp/

WORKDIR /tmp
RUN unzip *.zip
RUN tar xf *.tar.gz

FROM confluentinc/ksqldb-server:0.13.0 AS ksqldb-server

USER root

RUN mkdir -p /usr/share/kafka/plugins
COPY --from=build /tmp/confluentinc-kafka-connect-elasticsearch-10.0.2 /usr/share/kafka/plugins/confluentinc-kafka-connect-elasticsearch
COPY --from=build /tmp/debezium-connector-mysql /usr/share/kafka/plugins/debezium-connector-mysql

USER appuser
