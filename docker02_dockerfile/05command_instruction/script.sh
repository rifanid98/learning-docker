docker build -t rifanid/command_instruction .

#docker image inspect rifanid/command_instruction

docker container create --name command_instruction rifanid/command_instruction

docker container start command_instruction

docker container logs command_instruction