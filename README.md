# docker-compose-stacks

## atmoz-sftp-stack:
	docker compose -f atmoz-sftp-stack-compose.yml -p atmoz-sftp-stack up --detach

## docker-registry-stack:
	docker compose -f docker-registry-stack-compose.yml -p docker-registry-stack up --detach

## jaeger-stack:
	docker compose -f jaeger-stack-compose.yml -p jaeger-stack up --detach

## kafka-stack:
	docker compose -f kafka-stack-compose.yml -p kafka-stack up --detach

## mysql-stack:
	docker compose -f mysql-stack-compose.yml -p mysql-stack up --detach

## nats-stack:
	docker compose -f nats-stack-compose.yml -p nats-stack up --detach

## oracle-xe-stack:
	docker compose -f oracle-xe-stack-compose.yml -p oracle-xe-stack up --detach

## portainer-stack:
	docker compose -f portainer-stack-compose.yml -p portainer-stack up --detach

## postgres-stack:
	docker compose -f postgres-stack-compose.yml -p postgres-stack up --detach

## rabbitmq-stack:
	docker compose -f rabbitmq-stack-compose.yml -p rabbitmq-stack up --detach

## sonarqube-stack:
	docker compose -f sonarqube-stack-compose.yml -p sonarqube-stack up --detach
