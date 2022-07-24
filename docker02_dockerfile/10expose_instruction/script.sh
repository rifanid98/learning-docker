docker build -t rifanid/expose_instruction .

docker image inspect rifanid/expose_instruction

docker create --name expose_instruction -p 8080:8080 rifanid/expose_instruction

docker start expose_instruction

docker logs expose_instruction