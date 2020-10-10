ARG D_VERSION
FROM docker.elastic.co/logstash/logstash:${D_VERSION}

# USER root

# ADD ./config/logstash.yml /usr/share/logstash/config/logstash.yml

# RUN chown root /usr/share/logstash/config/logstash.yml
# RUN chmod go-w /usr/share/logstash/config/logstash.yml

# RUN /usr/share/logstash/bin/logstash-plugin  install logstash-input-jdbc
RUN logstash-plugin install logstash-integration-jdbc
RUN logstash-plugin install logstash-filter-aggregate logstash-filter-json

COPY ./postgresql-42.2.15.jar /usr/share/logstash/logstash-core/lib/jars/postgresql.jar