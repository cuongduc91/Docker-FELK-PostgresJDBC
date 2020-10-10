# Filebeat-ELK

* Configurations for deploying Elastic-Logstash-Kibana with data collector Filebeat on Docker

## Docker

- Download and Install Docker at https://www.docker.com
```
    cd /Filebeat-ELK
    docker-compose up
```
## Filebeat
* In filebeat.yml, there are codes for reading .log files (commented out) and instant docker inputs 
* The docker inputs are live-running containers except running ELK containers since they have been supported by Kibana
* The filebeat.autodiscover mode can identify all running containers
## ELK

Ports used for config. :

- 5044: Logstash
- 9200: Elasticsearch
- 5601: Kibana
### .env
* Important is to declare the version in ELK and Filebeat in the .env with the environment variable, here in example is D_VERSION.
* The D_VERSION used in this platform is 7.7.1
### Kibana
* Running on localhost:5061 as an entry point to Kibana interface.
* For default the id and password corresponding to "elastic" and "password".
* Remember to change reload in Kibana from default "last 15 minutes" to "Last 90 days" to observe the whole example data from docker containers

## Example .log
The logs folder contains the example .log file.  
