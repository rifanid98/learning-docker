# Add Instruction

- ADD adalah instruksi yang dapat digunakan untuk menambahkan file dari source ke dalam folder destination di Docker Image
- Perintah ADD bisa mendeteksi apakah sebuah file source merupakan file kompres seperti tar.gz, gzip, dan lain-lain. Jika mendeteksi file source adalah berupa file kompress, maka secara otomatis file tersebut akan di extract dalam folder destination 
- Perintah ADD juga bisa mendukung banyak penambahan file sekaligus 
- Penambahan banyak file sekaligus di instruksi ADD menggunakan Pattern di Go-Lang : https://pkg.go.dev/path/filepath#Match

# Add Instruction Format

- Instruksi ADD memiliki format sebagai berikut :
- ADD source destination 
- Contoh : 
- `ADD world.txt hello # menambah file world.txt ke folder hello` 
- `ADD *.txt hello # menambah semua file .txt ke folder hello`