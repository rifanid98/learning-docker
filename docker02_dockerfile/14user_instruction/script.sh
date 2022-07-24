docker build -t rifanid/user_instruction .

docker image inspect rifanid/user_instruction

docker create --name user_instruction -p 8080:8080 rifanid/user_instruction

docker start user_instruction

docker logs user_instruction

docker container exec -i -t user_instruction /bin/sh