ARG D_VERSION
FROM docker.elastic.co/logstash/logstash:${D_VERSION}

RUN logstash-plugin install logstash-integration-jdbc
RUN logstash-plugin install logstash-filter-aggregate logstash-filter-json

COPY ./postgresql-42.2.15.jar /usr/share/logstash/logstash-core/lib/jars/postgresql.jar