# Working Directory Instruction

- WORKDIR adalah instruksi untuk menentukan direktori / folder untuk menjalankan instruksi RUN, CMD, ENTRYPOINT, COPY dan ADD
- Jika WORKDIR tidak ada, secara otomatis direktorinya akan dibuat, dan selanjutnya setelah kita tentukan lokasi WORKDIR nya, direktori tersebut dijadikan tempat menjalankan instruksi selanjutnya 
- Jika lokasi WORKDIR adalah relative path, maka secara otomatis dia akan masuk ke direktori dari WORKDIR sebelumnya 
- WORKDIR juga bisa digunakan sebagai path untuk lokasi pertama kali ketika kita masuk ke dalam Docker Container 

# Working Directory Instruction Format

- Berikut adalah format untuk instruksi WORKDIR :
- `WORKDIR /app # artinya working directory nya adalah /app` 
- `WORKDIR docker # sekarang working directory nya adalah /app/docker` 
- `WORKDIR /home/app # sekarang working directory nya adalah /home/app` 