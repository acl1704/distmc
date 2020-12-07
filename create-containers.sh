#!/bin/sh

cd $(dirname $0)

docker stop distmc-proxy distmc-nexus
docker container rm distmc-proxy distmc-nexus

docker network rm distmc-net
docker network create -d bridge --ipv6 distmc-net \
       --subnet=172.18.0.0/16 \
       --subnet=fd14:3ea2:c75e:1::/64

./mkimages.sh

docker create \
       --network=distmc-net -p 25565:25565 -p 19132:19132/udp --name distmc-proxy distmc-proxy
docker create \
       --network=distmc-net --name distmc-nexus distmc-nexus

docker update --restart unless-stopped distmc-proxy
docker update --restart unless-stopped distmc-nexus
