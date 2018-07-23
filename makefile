docker build -t davefelce/mysites_whatsinmyfridge_webapp:latest -f ../../docker/sites/whatsinmyfridge/Dockerfile .
docker build -t davefelce/mysites_estateagentdjangodemo_webapp:latest -f ../../docker/sites/estate_agent_django_demo/Dockerfile .
docker build -t davefelce/mysites_logstash:latest -f ./Dockerfile .
docker build -t davefelce/mysites_postgres:latest -f ./Dockerfile .
