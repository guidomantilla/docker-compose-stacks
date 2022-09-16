# docker-compose-stacks


## portainer-stack:
	docker compose -f docker/portainer-stack-compose.yml -p portainer-stack up --detach

## jaeger-stack:
	docker compose -f docker/jaeger-stack-compose.yml -p jaeger-stack up --detach

## sonarqube-stack:
	docker compose -f docker/sonarqube-stack-compose.yml -p sonarqube-stack up --detach

## kafka-stack:
	docker compose -f docker/kafka-stack-compose.yml -p kafka-stack up --detach

## mysql-stack:
	docker compose -f docker/mysql-stack-compose.yml -p mysql-stack up --detach

## postgres-stack:
	docker compose -f docker/postgres-stack-compose.yml -p postgres-stack up --detach
