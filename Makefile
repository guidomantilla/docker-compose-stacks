.PHONY: phony
phony-goal: ; @echo $@3

install:
	docker compose -f portainer-stack-compose.yml -p portainer-stack up --detach
	docker compose -f mongo-stack-compose.yml -p mongo-stack up --detach
	docker compose -f mysql-stack-compose.yml -p mysql-stack up --detach
	docker compose -f postgres-stack-compose.yml -p postgres-stack up --detach
	docker compose -f oracle-23ai-stack-compose.yml -p oracle-23ai-stack up --detach
	docker compose -f nats-stack-compose.yml -p nats-stack up --detach
	docker compose -f rabbitmq-stack-compose.yml -p rabbitmq-stack up --detach
	docker compose -f kafka-stack-compose.yml -p kafka-stack up --detach
	docker compose -f atmoz-sftp-stack-compose.yml -p atmoz-sftp-stack up --detach
	docker compose -f jaeger-stack-compose.yml -p jaeger-stack up --detach
	docker compose -f sonarqube-stack-compose.yml -p sonarqube-stack up --detach
	docker compose -f hasura-stack-compose.yml -p hasura-stack up --detach
	
delete:
	