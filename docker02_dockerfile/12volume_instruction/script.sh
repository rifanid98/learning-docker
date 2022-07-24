docker build -t rifanid/volume_instruction .

docker image inspect rifanid/volume_instruction

docker create --name volume_instruction -p 8080:8080 rifanid/volume_instruction

docker start volume_instruction

docker logs volume_instruction