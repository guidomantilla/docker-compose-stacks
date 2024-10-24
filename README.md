# docker-compose-stacks
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=guidomantilla_docker-compose-stacks&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=guidomantilla_docker-compose-stacks)
[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=guidomantilla_docker-compose-stacks&metric=reliability_rating)](https://sonarcloud.io/summary/new_code?id=guidomantilla_docker-compose-stacks)
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=guidomantilla_docker-compose-stacks&metric=sqale_rating)](https://sonarcloud.io/summary/new_code?id=guidomantilla_docker-compose-stacks)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=guidomantilla_docker-compose-stacks&metric=security_rating)](https://sonarcloud.io/summary/new_code?id=guidomantilla_docker-compose-stacks)
[![Technical Debt](https://sonarcloud.io/api/project_badges/measure?project=guidomantilla_docker-compose-stacks&metric=sqale_index)](https://sonarcloud.io/summary/new_code?id=guidomantilla_docker-compose-stacks)
[![Duplicated Lines (%)](https://sonarcloud.io/api/project_badges/measure?project=guidomantilla_docker-compose-stacks&metric=duplicated_lines_density)](https://sonarcloud.io/summary/new_code?id=guidomantilla_docker-compose-stacks)
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=guidomantilla_docker-compose-stacks&metric=vulnerabilities)](https://sonarcloud.io/summary/new_code?id=guidomantilla_docker-compose-stacks)






## atmoz-sftp-stack:
	docker compose -f atmoz-sftp-stack-compose.yml -p atmoz-sftp-stack up --detach
* Ports: 22

## docker-registry-stack: TO FIX
	docker compose -f docker-registry-stack-compose.yml -p docker-registry-stack up --detach
* Ports: 5000

## jaeger-stack:
	docker compose -f jaeger-stack-compose.yml -p jaeger-stack up --detach
* Ports: 5775, 6831, 6832, 5778, 16686, 14268, 14250, 9411

## kafka-stack:
	docker compose -f kafka-stack-compose.yml -p kafka-stack up --detach
* Ports: 2181, 8004, 9092, 29092, 9999, 8081, 8082, 8083, 8088

## mongo-stack:
	docker compose -f mongo-stack-compose.yml -p mongo-stack up --detach
* Ports: 27017

## mysql-stack:
	docker compose -f mysql-stack-compose.yml -p mysql-stack up --detach
* Ports: 3306

## nats-stack:
	docker compose -f nats-stack-compose.yml -p nats-stack up --detach
* Ports: 4222, 6222, 8222

## oracle-21c-stack:
	docker compose -f oracle-21c-stack-compose.yml -p oracle-21c-stack up --detach
* Ports: 1521, 5500

## oracle-23ai-stack:
	docker compose -f oracle-23ai-stack-compose.yml -p oracle-23ai-stack up --detach
* Ports: 1521, 5500

## portainer-stack:
	docker compose -f portainer-stack-compose.yml -p portainer-stack up --detach
* Ports: 8000, 8001, 8002

## postgres-stack:
	docker compose -f postgres-stack-compose.yml -p postgres-stack up --detach
* Ports: 5432

## rabbitmq-stack:
	docker compose -f rabbitmq-stack-compose.yml -p rabbitmq-stack up --detach
* Ports: 5551, 5552, 5671, 5672, 15671, 15672, 61613, 61614, 1883, 8883

## sonarqube-stack:
	docker compose -f sonarqube-stack-compose.yml -p sonarqube-stack up --detach
* Ports: 9001

## hasura-stack:
	docker compose -f hasura-stack-compose.yml -p hasura-stack up --detach
* Ports: 5433, 8084, 8085

## vertica-stack:
	docker compose -f vertica-stack-compose.yml -p vertica-stack up --detach
* Ports: 5434, 5444


[![SonarCloud](https://sonarcloud.io/images/project_badges/sonarcloud-orange.svg)](https://sonarcloud.io/summary/new_code?id=guidomantilla_docker-compose-stacks)