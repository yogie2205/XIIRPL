# Kebutuhan

Pastikan Netbeans dan JDK versi 8.2 sudah terinstal.

# Permasalahan Perintah Javac

Perintah javac yang error di Windows biasanya memberi pesan `'javac' is not recognized as an internal bla bla bla...`
Dikarenakan perintah javac untuk compile file java belum di-setting di path windows atau pun JDK belum terinstal.

# Solusi

Setting path dulu dengan mengikuti tutorial di [link ini](https://www.duniailkom.com/tutorial-belajar-java-mengatur-setting-path-untuk-java-jdk/) untuk pengguna Windows 10.
Untuk pengguna windows 7, silakan mengikuti langkah selanjutnya di bawah.

Perlu diperhatikan, kalau masih error, silakan lihat folder di `C:\Program Files\Java\`.
![Folder JDK](https://raw.githubusercontent.com/yogie2205/XIIRPL/main/img_java_path/name_path.png)
Jika folder bernama misal `jdk1.8.0_271`, maka sesuaikan dan edit path seperti gambar di bawah ini kemudian save.
![Set Path JDK](https://raw.githubusercontent.com/yogie2205/XIIRPL/main/img_java_path/4.png)
Kemudian tes perintah javac di CMD untuk compile file java. Kalau masih error, coba dicek lagi di setting path-nya. Bisa jadi karena versinya.

# Solusi untuk Windows 7

Tampilan setting path di Windows 7 agak berbeda. Berikut langkahnya:
1. Search di menu dengan mengetikkan `environment` lalu klik pilihan `Edit the system environment variables`.
![Menu Environment](https://raw.githubusercontent.com/yogie2205/XIIRPL/main/img_java_path/1.png)

2. Ke menu `Advanced` lalu klik `Environment Variables...`.
![Advanced Menu](https://raw.githubusercontent.com/yogie2205/XIIRPL/main/img_java_path/2.png)

3. Di bagian `System variables`, klik `Edit...` pada variable `Path` seperti gambar di bawah.
![System Variables](https://raw.githubusercontent.com/yogie2205/XIIRPL/main/img_java_path/3.png)

4. Tambahkan path di `Variable value` sesuai dengan versi JDK seperti di folder `C:\Program Files\Java\`. Versinya bisa beda-beda misal `C:\Program Files\Java\jdk1.8.0_111\bin\`.
![Set Path JDK](https://raw.githubusercontent.com/yogie2205/XIIRPL/main/img_java_path/4.png)

5. Jika sudah di-set kemudian klik `Ok` untuk save.

6. Jika masih error, coba periksa kembali versi jdk di folder `C:\Program Files\Java\`, lalu edit lagi path-nya.
