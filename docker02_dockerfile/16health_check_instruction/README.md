# Health Check Instruction

- HEALTHCHECK adalah instruksi yang digunakan untuk memberi tahu Docker bagaimana untuk mengecek apakah Container masih berjalan dengan baik atau tidak
- Jika terdapat HEALTHCHECK, secara otomatis Container akan memili status health, dari awalnya bernilai starting, jika sukses maka bernilai healthy, jika gagal akan bernilai unhealty 

# Health Check Instruction Format

- Berikut adalah format untuk instruksi HEALTHCHECK :
- HEALTHCHECK NONE # artinya disabled health check 
- HEALTHCHECK [OPTIONS] CMD command  
- OPTIONS : 
- `--interval=DURATION (default: 30s)` 
- `--timeout=DURATION (default: 30s)` 
- `--start-period=DURATION (default: 0s)` 
- `--retries=N (default: 3)` 