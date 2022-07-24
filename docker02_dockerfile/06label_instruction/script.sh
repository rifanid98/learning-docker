docker build -t rifanid/label_instruction .

docker image inspect rifanid/label_instruction

docker container create --name label_instruction rifanid/label_instruction

docker start label_instruction

docker logs label_instruction