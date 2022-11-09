## Tugas 7

1. Stateless widget adalah widget statis yang mana seluruh konfigurasi di dalamnya telah diinisiasi sejak awal, tidak berubah karena aksi atau interaksi dari user. Sedangkan Stateful widget adalah widget yang dinamis yang mana widget ini dapat berubah atau diperbaharui kapan pun lewat interaksi dengan user atau perubahan dalam data. 

2. Pada tugas kali ini, saya memakai widget:<br>
Scaffold() untuk melakukan implementasi layout struktur Material Design visual standar atau basic seperti struktur template kosong  
AppBar() untuk membuat sebuah bar yang dapat berisikan toolbar ataupun widget lainnya
Center() untuk menaruh atau memposisikan child dalam dirinya sendiri di bagian tengah
Column() untuk menata elemen atau widget secara vertikal 
Text() untuk membuat teks dalam layar
Stack() untuk dapat menggunakan widget di atas dari widget lainnya
Align() untuk memposisikan atau align sesuai posisi yang dimau
Padding() untuk memberikan jarak atau padding untuk elemen
FloatingActionButton() untuk menambahkan suatu elemen berupa tombol
Icon() untuk menambahkan icon atau gambar kecil

3. setState() adalah suatu function yang digunakan untuk memberi tahu atau menotifikasi jika terjadi sebuah perubahan dan efek dari fungsi ini akan berdampak pada program sehingga akan menjalankan build untuk menampilkan perubahan pada layar. Variabel yang akan terkena dampak dari fungsi ini adalah segala variabel atau widget yang menggunakan nilai dari variabel yang berubah setelah notifikasi dari fungsi tersebut.

4. Const dan final merupakan dua hal yang mirip. Keduanya sama-sama digunakan untuk membuat sebuah variabel. Akan tetapi, mereka memiliki perbedaan di bagian value yang disimpan. Const merupakan keyword yang digunakan untuk membuat variabel yang akan menyimpan value pada saat compile time sedangkan final merupakan keyword yang digunakan untuk membuat variabel yang akan menyimpan value pada saat run time.

5. Implementasi poin-poin:<br>
Poin 1: Membuat app flutter dengan flutter create
Poin 2: Mengganti tulisan dalam navbar, mengganti tulisan ke genap, dan menambahkan tombol minus
Poin 3: Membuat fungsi untuk melakukan pengurangan atau decrement, membuat fungsi untuk mengembalikan kondisi/jenis bilangan genap atau ganjil, dan menambahkan situasi agar 0 adalah genap. Menerapkan dan mengisi bagian widget dengan fungsi yang sesuai serta melakukan kustomisasi untuk widget tersebut (color, padding)