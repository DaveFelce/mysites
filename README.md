# mysites
# My demo sites all in one place, with one docker-compose

## Deploy
Make a tar of .env and docker-compose.yml
rsync it to digitalocean
ssh to digitalocean
Ensure you've done this for ES: sudo sysctl -w vm.max_map_count=262144
Ensure you've done this for ES: curl -XPUT 'localhost:9200/_xpack/security/user/elastic/_password' -d '{"password" : "NXo9f3HaPrUq"}' -u elastic
docker-compose up
