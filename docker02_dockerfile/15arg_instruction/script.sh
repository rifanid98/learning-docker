docker build -t rifanid/arg_instruction . --build-arg app=pzn

docker image inspect rifanid/arg_instruction

docker create --name arg_instruction -p 8080:8080 rifanid/arg_instruction

docker start arg_instruction

docker logs arg_instruction

docker container exec -i -t arg_instruction /bin/sh