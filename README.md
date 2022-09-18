# docker-compose-stacks

## portainer-stack:
	docker compose -f portainer-stack-compose.yml -p portainer-stack up --detach

## jaeger-stack:
	docker compose -f jaeger-stack-compose.yml -p jaeger-stack up --detach

## sonarqube-stack:
	docker compose -f sonarqube-stack-compose.yml -p sonarqube-stack up --detach

## kafka-stack:
	docker compose -f kafka-stack-compose.yml -p kafka-stack up --detach

## mysql-stack:
	docker compose -f mysql-stack-compose.yml -p mysql-stack up --detach

## postgres-stack:
	docker compose -f postgres-stack-compose.yml -p postgres-stack up --detach

## rabbitmq-stack:
docker compose -f rabbitmq-stack-compose.yml -p rabbitmq-stack up --detach
