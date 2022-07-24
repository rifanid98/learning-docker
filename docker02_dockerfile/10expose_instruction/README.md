# Expose Instruction

- EXPOSE adalah instruksi untuk memberitahu bahwa container akan listen port pada nomor dan protocol tertentu
- Instruksi EXPOSE tidak akan mempublish port apapun sebenarnya, Instruksi EXPOSE hanya digunakan sebagai dokumentasi untuk memberitahu yang membuat Docker Container, bahwa Docker Image ini akan menggunakan port tertentu ketika dijalankan menjadi Docker Container

# Expose Instruction Format

- Berikut adalah format untuk instruksi EXPOSE :
- `EXPOSE port #` default nya menggunakan TCP 
- `EXPOSE port/tcp` 
- `EXPOSE port/udp` 