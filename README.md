# 🚀 Docker-FELK-PostgresJDBC

- Configurations for deploying Filebeat-Logstash-Elasticsearch-Kibana to collect logs from other running containers and directly synchronize from current running database (also on docker container).
- Obviously, it will be easier to deploy the database on the same docker-compose, however in real scenarios, database and FELK won't always go hand in hand.

## 🐳 Docker

- Download and Install [Docker](https://www.docker.com)

```
    cd /Docker-FELK-PostgresJDBC/Postgres
    docker-compose build
    docker-compose up
    cd /Docker-FELK-PostgresJDBC/FELK
    docker-compose build
    docker-compose up
```

## 🚀 DBeaver

- 💥Download and install DBeaver as GUI configuration to the PostgreSQL database
- There is a button (+ 🔌) --> select PostgreSQL.
- Configuration with localhost:5432

```
    POSTGRES_USER=postgres
    POSTGRES_USER=postgres
    POSTGRES_PASSWORD=postgress
```

- Execute the script.sql file

## Filebeat

- In filebeat.yml, there are codes for reading .log files (commented out) and instant docker inputs
- The docker inputs are live-running containers except running ELK containers since they have been supported by Kibana
- The filebeat.autodiscover mode can identify all running containers

## ELK

Ports used for config. :

- 5044: Logstash
- 9200: Elasticsearch
- 5601: Kibana

### .env

- Important is to declare the version in ELK and Filebeat in the .env with the environment variable, here in example is D_VERSION.
- The D_VERSION used in this platform is 7.7.1
- 🧨🧨🧨 Note: error of host name => localhost ist not accepted, if you deploy your database on docker. Depending on the machine that docker runs, for example for window machine the database host docker.for.win.localhost whereas for linux docker.host.internal, or if there still occurs an error, another option that determining the IP that the docker container is running, then replace the IP to the database host.

### Kibana

- Running on localhost:5061 as an entry point to Kibana interface.
- For default the id and password corresponding to "elastic" and "password".
- Remember to change reload in Kibana from default "last 15 minutes" to "Last 90 days" to observe the whole example data from docker containers
