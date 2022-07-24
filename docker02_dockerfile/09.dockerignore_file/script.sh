docker build -t rifanid/dockerignore_instruction .

docker image inspect rifanid/dockerignore_instruction

docker create --name dockerignore_instruction rifanid/dockerignore_instruction

docker start dockerignore_instruction

docker logs dockerignore_instruction