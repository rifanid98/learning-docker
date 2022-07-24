docker build -t rifanid/add_instruction .

docker image inspect rifanid/add_instruction

docker create --name add_instruction rifanid/add_instruction

docker start add_instruction

docker logs add_instruction