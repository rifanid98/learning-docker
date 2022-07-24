# Environment Variable Instruction

- ENV adalah instruksi yang digunakan untuk mengubah environment variable, baik itu ketika tahapan build atau ketika jalan dalam Docker Container
- ENV yang sudah di definisikan di dalam Dockerfile bisa digunakan kembali dengan menggunakan sintaks ${NAMA_ENV} 
- Environment Variable yang dibuat menggunakan instruksi ENV disimpan di dalam Docker Image dan bisa dilihat menggunakan perintah docker image inspect 
- Selain itu, environment variable juga bisa diganti nilainya ketika pembuatan Docker Container dengan perintah docker container create --env key=value 

# Environment Variable Format

- Berikut adalah format untuk instruksi ENV :
- `ENV key=value`  
- `ENV ke1=value1 key2=value2 …` 