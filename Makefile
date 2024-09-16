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
	docker image prune -f

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

enable:
	docker exec rabbitmq-server rabbitmq-plugins enable rabbitmq_stream rabbitmq_stream_management rabbitmq_management rabbitmq_amqp1_0 abbitmq_auth_mechanism_ssl

certificates:
	openssl genrsa -passout pass:1111 -des3 -out ca.key 4096
	openssl req -passin pass:1111 -new -x509 -days 3650 -key ca.key -out ca.crt -subj "/CN=$(SERVER_CN)"
	openssl genrsa -passout pass:1111 -des3 -out server.key 4096
	openssl req -passin pass:1111 -new -key server.key -out server.csr -subj "/CN=$(SERVER_CN)" -config $(OPENSSLCNF)
	openssl x509 -req -passin pass:1111 -days 3650 -in server.csr -CA ca.crt -CAkey ca.key -set_serial 01 -out server.crt -extensions v3_req -extfile $(OPENSSLCNF)
	openssl pkcs8 -topk8 -nocrypt -passin pass:1111 -in server.key -out server.pem
	openssl req -newkey rsa:2048 -nodes -keyout rabbitmq-key.pem -x509 -days 365 -out rabbitmq-cert.pem

