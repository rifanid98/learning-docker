# get all images
docker image ls

# download image from docker registry into local machine
# docker image pull image_name:image_tag
docker image pull redis:latest

# remove downloaded docker image
# docker image rm image_name:image_tag
docker image rm redis:latest

# get all containers
docker container ls -a

# get all running containers
docker container ls
docker ps

# create docker container
# docker container create --name container_name docker_image
docker container create --name contohredis redis:latest

# start docker container
# docker container start container_name
docker container start contohredis

# stop docker container
# docker container stop container_name
docker container stop contohredis

# get container  logs
# docker container logs container_name
docker container logs contohredis

# get container logs and listen it
# docker container logs -f container_name
docker container logs -f contohredis

# get container's terminal access
# docker container exec -i -t container_name bash
docker container exec -i -t contohredis bash

# port forwarding
# docker container create --name container_name --publish posthost:portcontainer image_name:image_tag
docker container create --name contohnginx --publish 8080:80 nginx:latest

# add environtment variable
# docker container create --name container_name --env KEY="value" --env KEY2="value" image_name:image_tag
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME="mongo" --env MONGO_INITDB_ROOT_PASSWORD="mongo" mongo:latest

# get container stats
docker container stats

# set resource limit cpu & memory
# docker container create --name container_name --memory 100m --cpus 0.5 image_name:image_tag
# --memory 100m (set memory to 100 MB)
# --cpus 0.5 (set cpu to 0.5 core/thread)
docker container create --name smallnginx --publish 8081:80 --memory 100m --cpus 0.5 nginx:latest

# mount local data to container
# docker container --create --name container_name --mount "type=bind,source=folder,destination=folder,readonly" image_name:image_tag
docker container create --name contohmongodata --mount "type=bind,source=/home/anonymous/mongo-data,destination=/data/db" --publish 27018:27017 --env MONGO_INITDB_ROOT_USERNAME=mongo --env MONGO_INITDB_ROOT_PASSWORD=mongo mongo:latest

# get all docker volumes
docker volume ls

# create docker volume
# docker volume create volume_name
docker volume create mongovolume

# delete docker volume
# docker volume rm volume_name
docker volume rm mongovolume

# using docker volume in container
# docker container --create --name container_name --mount "type=volume,source=volume_name,destination=folder,readonly" image_name:image_tag
docker container create --name contohmongodatavolume --mount "type=volume,source=mongovolume,destination=/data/db" --publish 27018:27017 --env MONGO_INITDB_ROOT_USERNAME=mongo --env MONGO_INITDB_ROOT_PASSWORD=mongo mongo:latest

# backup volume
# - stop container
# - create folder backup in host
# - create dummy container for backup purpose with 2 mount types, bind and volume.
# - access container bash
# - compress data

docker container stop contohmongodatavolume
mkdir mongo-backup
docker container create --name nginxbackup --mount "type=bind,source=/home/anonymous/mongo-backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" nginx:latest
docker container exec -i -t nginxbackup bash
tar cvf /backup/backup.tar.gz /data

# with one command

docker container run --rm --name ubuntu --mount  "type=bind,source=/home/anonymous/mongo-backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" nginx:latest tar cvf /backup/backup.tar.gz /data

# restore volume
# - create new volume
# - create dummy container with 2 mount types, bind and volume. for restore purposes
# - extract backup data
# - create new container using restored volume

docker volume create mongodatarestore
docker container run --rm --name mongorestore --mount "type=bind,source=/home/anonymous/mongo-backup,destination=/backup" --mount "type=volume,source=mongodatarestore,destination=/data" mongo:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

# get all docker networks
docker network ls

# create docker network
# docker network create --driver driver_name network_name
docker network create --driver bridge contohnetwork

# delete network
# docker network rm network_name
docker network rm contohnetwork

# create container with network
# docker container create --name container_name --network network_name image_name:image_tag
docker container create --name contohmongodb --env MONGO_INITDB_ROOT_USERNAME=mongo --env MONGO_INITDB_ROOT_PASSWORD=mongo --network contohnetwork mongo:latest
docker container create --name contohmongoexpress --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://mongo:mongo@contohmongodb:27017/" --network contohnetwork mongo-express:latest

# disconnect container from a network
# docker network disconnect network_name container_name
docker network disconnect contohnetwork contohmongodb

# connect container to a network
# docker network connect network_name container_name
docker network connect contohnetwork contohmongodb

# get detail info about container, volume, image, network
# docker image inspect image_name
# docker container inspect container_name
# docker volume inspect volume_name
# docker network inspect network_name
docker image inspect mongo:latest
docker container inspect contohmongodb
docker volume inspect mongovolume
docker network inspect contohnetwork

# prune container, volume, image, network
# docker image prune
# docker container prune
# docker volume prune
# docker network prune
# docker system prune # prune all, includes container, volume, image, network
docker image prune
docker container prune
docker volume prune
docker network prune
docker system prune
