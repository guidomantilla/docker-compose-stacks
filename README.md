# docker-compose-stacks


## portainer-stack:
	docker compose -f docker/portainer-stack-compose.yml up --detach

## jaeger-stack:
	docker compose -f docker/jaeger-stack-compose.yml up --detach

## sonarqube-stack:
	docker compose -f docker/sonarqube-stack-compose.yml up --detach

## kafka-stack:
	docker compose -f docker/kafka-stack-compose.yml up --detach

## mysql-stack:
	docker compose -f docker/mysql-stack-compose.yml up --detach

## postgres-stack:
	docker compose -f docker/postgres-stack-compose.yml up --detach
