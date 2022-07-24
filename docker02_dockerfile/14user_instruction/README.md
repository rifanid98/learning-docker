# User Instruction

- USER adalah instruksi yang digunakan untuk mengubah user atau user group ketika Docker Image dijalankan
- Secara default, Docker akan menggunakan user root, namun pada beberapa kasus, mungkin ada aplikasi yang tidak ingin jalan dalam user root, maka kita bisa mengubah user nya menggunakan instruksi USER 

# User Instruction Format

- Berikut adalah format untuk instruksi USER:
- `USER <user> # mengubah user` 
- `USER <user>:<group> # mengubah user dan user group` 