.PHONY: phony
phony-goal: ; @echo $@3

install: update
	docker compose -f portainer-stack-compose.yml -p portainer-stack up --detach --remove-orphans
	docker compose -f mongo-stack-compose.yml -p mongo-stack up --detach --remove-orphans
	docker compose -f mysql-stack-compose.yml -p mysql-stack up --detach --remove-orphans
	docker compose -f postgres-stack-compose.yml -p postgres-stack up --detach --remove-orphans
	docker compose -f oracle-23ai-stack-compose.yml -p oracle-23ai-stack up --detach --remove-orphans
	docker compose -f nats-stack-compose.yml -p nats-stack up --detach --remove-orphans
	docker compose -f rabbitmq-stack-compose.yml -p rabbitmq-stack up --detach --remove-orphans
	docker compose -f kafka-stack-compose.yml -p kafka-stack up --detach --remove-orphans
	docker compose -f atmoz-sftp-stack-compose.yml -p atmoz-sftp-stack up --detach --remove-orphans
	docker compose -f jaeger-stack-compose.yml -p jaeger-stack up --detach --remove-orphans
	docker compose -f sonarqube-stack-compose.yml -p sonarqube-stack up --detach --remove-orphans
	docker compose -f hasura-stack-compose.yml -p hasura-stack up --detach --remove-orphans

update:
	docker compose -f portainer-stack-compose.yml -p portainer-stack pull
	docker compose -f mongo-stack-compose.yml -p mongo-stack pull
	docker compose -f mysql-stack-compose.yml -p mysql-stack pull
	docker compose -f postgres-stack-compose.yml -p postgres-stack pull
	docker compose -f oracle-23ai-stack-compose.yml -p oracle-23ai-stack pull
	docker compose -f nats-stack-compose.yml -p nats-stack pull
	docker compose -f rabbitmq-stack-compose.yml -p rabbitmq-stack pull
	docker compose -f kafka-stack-compose.yml -p kafka-stack pull
	docker compose -f atmoz-sftp-stack-compose.yml -p atmoz-sftp-stack pull
	docker compose -f jaeger-stack-compose.yml -p jaeger-stack pull
	docker compose -f sonarqube-stack-compose.yml -p sonarqube-stack pull
	docker compose -f hasura-stack-compose.yml -p hasura-stack pull
	docker image prune

enable:
	docker exec rabbitmq-server rabbitmq-plugins enable rabbitmq_stream rabbitmq_stream_management rabbitmq_management
	