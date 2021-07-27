# Prasyarat

Netbeans dan JDK versi 8.2 telah terinstal.

# Permasalahan Perintah Compile dan Run File Java

Perintah `javac` yang *error* di Windows memberi pesan `'javac' is not recognized as an internal...`.
Dikarenakan perintah `javac` atau pun perintah `java` untuk *compile* dan *run file* Java belum di-*setting* di ***path*** Windows atau pun JDK belum terinstal.

# Solusi

*Setting path* dengan mengikuti tutorial di [link ini](https://www.duniailkom.com/tutorial-belajar-java-mengatur-setting-path-untuk-java-jdk/) untuk pengguna Windows 10.

Untuk pengguna Windows 7, silakan mengikuti langkah selanjutnya di bawah.

Perlu diperhatikan, jika masih *error*, silakan lihat *folder* di `C:\Program Files\Java\`.
![Folder JDK](https://raw.githubusercontent.com/yogie2205/XIIRPL/main/java_path_img/name_path.png)

Jika *folder* misal bernama `jdk1.8.0_271`, maka sesuaikan dan *edit path* seperti gambar di bawah ini kemudian *save*.
![Set Path JDK](https://raw.githubusercontent.com/yogie2205/XIIRPL/main/java_path_img/4.png)

Kemudian tes perintah `javac` di CMD untuk *compile file* Java. Jika masih *error*, coba cek kembali di *setting path*-nya. Bisa jadi karena versinya.

# Solusi untuk Windows 7

Tampilan *setting path* di Windows 7 sedikit berbeda. Berikut langkahnya:
1. *Search* di *menu* dengan mengetikkan `environment` lalu klik pilihan `Edit the system environment variables`.

![Menu Environment](https://raw.githubusercontent.com/yogie2205/XIIRPL/main/java_path_img/1.png)


2. Ke *menu* `Advanced` lalu klik `Environment Variables...`.

![Advanced Menu](https://raw.githubusercontent.com/yogie2205/XIIRPL/main/java_path_img/2.png)

3. Di bagian `System variables`, klik `Edit...` pada *variable* `Path` seperti gambar di bawah.

![System Variables](https://raw.githubusercontent.com/yogie2205/XIIRPL/main/java_path_img/3.png)

4. Tambahkan *path* di `Variable value` sesuai dengan versi JDK seperti di *folder* `C:\Program Files\Java\`. Versinya dapat berbeda misal `C:\Program Files\Java\jdk1.8.0_111\bin\`.

![Set Path JDK](https://raw.githubusercontent.com/yogie2205/XIIRPL/main/java_path_img/4.png)

5. Jika sudah di-*set*, klik `Ok` untuk *save*.

6. Jika masih *error*, periksa kembali versi JDK di *folder* `C:\Program Files\Java\`, lalu *edit* kembali *path*-nya.
