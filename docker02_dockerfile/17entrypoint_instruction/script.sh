docker build -t rifanid/entrypoint_instruction .

docker image inspect rifanid/entrypoint_instruction

docker create --name entrypoint_instruction -p 8080:8080 rifanid/entrypoint_instruction

docker start entrypoint_instruction

docker logs entrypoint_instruction

docker container exec -i -t entrypoint_instruction /bin/sh