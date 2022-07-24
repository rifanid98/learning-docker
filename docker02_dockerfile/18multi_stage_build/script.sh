docker build -t rifanid/multi_stage_build .

docker image inspect rifanid/multi_stage_build

docker create --name multi_stage_build -p 8080:8080 rifanid/multi_stage_build

docker start multi_stage_build

docker logs multi_stage_build

docker container exec -i -t multi_stage_build /bin/sh