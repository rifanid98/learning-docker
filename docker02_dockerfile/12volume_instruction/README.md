# Volume Instruction

- VOLUME merupakan instruksi yang digunakan untuk membuat volume secara otomatis ketika kita membuat Docker Container
- Semua file yang terdapat di volume secara otomatis akan otomatis di copy ke Docker Volume, walaupun kita tidak membuat Docker Volume ketika membuat Docker Container nya 
- Ini sangat cocok pada kasus ketika aplikasi kita misal menyimpan data di dalam file, sehingga data bisa secara otomatis aman berada di Docker Volume 

# Volume Instruction Format

- Berikut adalah format untuk instruksi VOLUME :
- `VOLUME /lokasi/folder` 
- `VOLUME /lokasi/folder1 /lokasi/folder2 …` 
- `VOLUME [“/lokasi/folder1”, “/lokasi/folder2”, “...”]` 