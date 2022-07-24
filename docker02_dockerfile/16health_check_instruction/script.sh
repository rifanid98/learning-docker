docker build -t rifanid/health_check_instruction .

docker image inspect rifanid/health_check_instruction

docker create --name health_check_instruction -p 8080:8080 rifanid/health_check_instruction

docker start health_check_instruction

docker logs health_check_instruction