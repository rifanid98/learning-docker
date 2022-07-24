docker build -t rifanid/copy_instruction .

docker image inspect rifanid/copy_instruction

docker create --name copy_instruction rifanid/copy_instruction

docker start copy_instruction

docker logs copy_instruction