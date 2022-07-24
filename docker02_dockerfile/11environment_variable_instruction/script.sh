docker build -t rifanid/environment_variable_instruction .

docker image inspect rifanid/environment_variable_instruction

# replace env value
# docker create --name environment_variable_instruction -p 8080:8080 --env APP_PORT=8080 rifanid/environment_variable_instruction
docker create --name environment_variable_instruction -p 8080:8080 rifanid/environment_variable_instruction

docker start environment_variable_instruction

docker logs environment_variable_instruction