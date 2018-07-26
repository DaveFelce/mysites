build_whatsinmyfridge_webapp:
	docker build -t davefelce/mysites_whatsinmyfridge_webapp:latest -f docker/sites/whatsinmyfridge/Dockerfile .
build_estateagentdjangodemo_webapp:
	docker build -t davefelce/mysites_estateagentdjangodemo_webapp:latest -f docker/sites/estate_agent_django_demo/Dockerfile .
build_logstash:
	docker build -t davefelce/mysites_logstash:latest -f docker/logstash/Dockerfile .
build_postgres:
	docker build -t davefelce/mysites_postgres:latest -f docker/postgres/Dockerfile .
push_docker_whatsinmyfridge_webapp:
	docker push davefelce/mysites_whatsinmyfridge_webapp:latest
push_docker_estateagentdjangodemo_webapp:
	docker push davefelce/mysites_estateagentdjangodemo_webapp:latest
push_docker_logstash:
	docker push davefelce/mysites_logstash:latest
push_docker_postgres:
	docker push davefelce/mysites_postgres:latest
