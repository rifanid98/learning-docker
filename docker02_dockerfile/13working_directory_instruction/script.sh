docker build -t rifanid/working_directory_instruction .

docker image inspect rifanid/working_directory_instruction

docker create --name working_directory_instruction -p 8080:8080 rifanid/working_directory_instruction

docker start working_directory_instruction

docker logs working_directory_instruction

docker container exec -i -t working_directory_instruction /bin/sh