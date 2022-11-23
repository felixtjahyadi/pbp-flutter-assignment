## Tugas 7

1. Stateless widget adalah widget statis yang mana seluruh konfigurasi di dalamnya telah diinisiasi sejak awal, tidak berubah karena aksi atau interaksi dari user. Sedangkan Stateful widget adalah widget yang dinamis yang mana widget ini dapat berubah atau diperbaharui kapan pun lewat interaksi dengan user atau perubahan dalam data. 

2. Pada tugas kali ini, saya memakai widget:<br>
MaterialApp() untuk membungkus widget-widget dalam dirinya untuk pembuatan aplikasi <br>
Scaffold() untuk melakukan implementasi layout struktur Material Design visual standar atau basic seperti struktur template kosong  <br>
AppBar() untuk membuat sebuah bar yang dapat berisikan toolbar ataupun widget lainnya<br>
Center() untuk menaruh atau memposisikan child dalam dirinya sendiri di bagian tengah<br>
Column() untuk menata elemen atau widget secara vertikal <br>
Text() untuk membuat teks dalam layar<br>
Stack() untuk dapat menggunakan widget di atas dari widget lainnya<br>
Align() untuk memposisikan atau align sesuai posisi yang dimau<br>
Padding() untuk memberikan jarak atau padding untuk elemen<br>
FloatingActionButton() untuk menambahkan suatu elemen berupa tombol<br>
Icon() untuk menambahkan icon atau gambar kecil<br>

3. setState() adalah suatu function yang digunakan untuk memberi tahu atau menotifikasi jika terjadi sebuah perubahan dan efek dari fungsi ini akan berdampak pada program sehingga akan menjalankan build untuk menampilkan perubahan pada layar. Variabel yang akan terkena dampak dari fungsi ini adalah segala variabel atau widget yang menggunakan nilai dari variabel yang berubah setelah notifikasi dari fungsi tersebut.

4. Const dan final merupakan dua hal yang mirip. Keduanya sama-sama digunakan untuk membuat sebuah variabel. Akan tetapi, mereka memiliki perbedaan di bagian value yang disimpan. Const merupakan keyword yang digunakan untuk membuat variabel yang akan menyimpan value pada saat compile time sedangkan final merupakan keyword yang digunakan untuk membuat variabel yang akan menyimpan value pada saat run time.

5. Implementasi poin-poin:<br>
Poin 1: Membuat app flutter dengan flutter create<br>
Poin 2: Mengganti tulisan dalam navbar, mengganti tulisan ke genap, dan menambahkan tombol minus<br>
Poin 3: Membuat fungsi untuk melakukan pengurangan atau decrement, membuat fungsi untuk mengembalikan kondisi/jenis bilangan genap atau ganjil, dan menambahkan situasi agar 0 adalah genap. Menerapkan dan mengisi bagian widget dengan fungsi yang sesuai serta melakukan kustomisasi untuk widget tersebut (color, padding)

## Tugas 8

1. Navigator.push digunakan untuk menambahkan route ke dalam sebuah stack yang ditangani oleh Navigator sedangkan Navigator.pushReplacement digunakan untuk menambahkan route ke dalam sebuah stack yang ditangani oleh Navigator tetapi item atau route yang berada sebelum dari route yang di push setelah terjadi push akan terhapus atau dibuang.

2. Dalam proyek kali ini, saya menggunakan widget: <br>
Scaffold() = kumpulan widget yang akan ditampilkan<br>
AppBar() = Sebuah bar dipaling atas untuk keterangan nama window/halaman yang dibuka<br>
Drawer() = Membuat sebuah daftar menu untuk navigasi ke berbagai aplikasi atau window/halaman yang terhubung<br>
Form() = Membuat sebuah form yang akan digunakan isinya p<br>
Center() = Untuk meletakkan item di dalamnya pada posisi tengah<br>
Padding() = Untuk mengatur jarak di sekitar suatu item<br>
Column() = Untuk menampilkan widget secara vertikal<br>
TextFormField() = Untuk menampilkan tempat untuk menaruh input<br>
DropdownButton() = Untuk membuat sebuah dropdown yang berisikan pilihan-pilihan <br>
Icon() = menampilkan icon<br>
Text() = menampilkan text<br>
SizedBox() = membuat sebuah box <br>
Container() = Tempat untuk menaruh dan membungkus kumpulan item yang berbeda-beda<br>
ListView() = Menampilkan widget dalam bentuk list<br>

3. Beberapa event yang ada dalam Flutter: <br>
onPressed = mengeksekusi pada saat user menekan tombol<br>
onChanged = mengeksekusi pada saat terjadi perubahan terhadap satu hal<br>
onTap = mengeksekusi pada saat user melakukan tap atau klik ringan<br>
onSaved = mengeksekusi pada saat terjadi penyimpanan atau save<br>
onSubmitted = mengeksekusi pada saat pengumpulan ke form<br>

4. Navigator merupakan suatu widget yang memiliki kegunaan untuk mengontrol sebuah stack yang mana stack tersebut berisikan route-route ke halaman yang lain. Navigator bekerja dengan cara menggunakan push dan pop seperti stack biasa yang mana pada saat ingin berpindah ke halaman baru maka akan dilakukan push sehingga akan menambahkan route ke stack dan menampilkannya lalu jika ingin ke halaman sebelumnya dapat menggunakan pop yang akan mengeluarkan isi teratas dari stack sehingga bagian paling atas stack merupakan halaman sebelumnya sehingga itu yang ditampilkan.

5. Implementasi poin-poin: <br>
Poin 1 = Membuat dan menambahkan drawer dalam widget build lalu memindahkannya ke drawer.dart dan membuat dan menggunakan class MyDrawer dalam pengerjaan bonus<br> 
Poin 2 = Dalam drawer.dart di dalam class diisikan dengan ListTile yang berisikan Navigator ke class lainnya pada saat dipencet <br>
Poin 3 = Membuat form.dart dan mengisikannya dengan widget yang dibutuhkan, 2 buah textformfield untuk input judul dan nomina, sebuah dropdownbutton untuk jenis dari budget, dan tombol untuk memilih tanggal atau datepicker untuk bonus<br>
Poin 4 = Membuat data.dart yang akan menampilkan data yang telah diambil dari form dan disimpan dengan cara mengakses list dari data yang akan ditampilkan dan menambahkannya ke list baru yang pada saat penambahannya sudah disertai widget yang dipakai untuk membuat card berisikan data tersebut<br>

## Tugas 9

1. Tentu bisa, tanpa membuat sebuah model terlebih dahulu kita masih bisa mengambil data JSON akan tetapi hal tersebut akan menyulitkan developer dikarenakan akan berupa raw data dan perlu memproses respon dari JSON tersebut secara manual sehingga tidak efisien. Oleh karena itu, penggunaan models tetap lebih baik untuk memudahkan developer melakukan operasi pada data-data tersebut.

2. Widget yang saya gunakan untuk Tugas 9 ini: <br>
FutureBuilder() = Untuk membuat widget berdasarkan interaksi dengan widget dan fetching data <br>
GestureDetector() = Widget yang digunakan untuk mendeteksi aksi pengguna/user <br>
ListView() = Untuk menampilkan secara list dengan scrolling <br>
Checkbox() = Untuk menambahkan sebuat checkbox <br>
Expanded() = Untuk memperluas child untuk memenuhi ruang yang ada <br>
Flexible() = Mengontrol ukuran child untuk menyesuaikan dengan ruang yang ada <br>
Widget-widget pada tugas sebelumnya 

3. Mekanisme pengambilan dan menampilkan: <br>
Pertama, membuat sebuah model kustom sesuai dengan apa saja data JSON yang akan diambil <br>
Kedua, mengambil data atau fetching dengan menggunakan perintah get dari http <br> 
Ketiga, mengolah data yang telah diambil menjadi Dart object dan mengimpannya dalam sebuah list <br>
Keempat, menampilkan data tersebut dengan memanfaatkan widget yang sesuai <br>

4. Implementasi: <br>
Poin 1 = Menambahkan ListTile ke drawer.dart yang akan menghubungkan ke My Watch List <br>
Poin 2 = Menambahkan folder model dan file mywatchlist.dart untuk diisikan data, saya juga melakukan refactor untuk setiap dart file <br>
Poin 3 = Membuat file untuk menampilkan data yaitu mywatchlist_page.dart dan membuat file untuk melakukan fetching ke data JSON yaitu fetchmywatchlist.dart, dalam file fetch tersebut ada fungsi yang akan melakukan get ke link JSON dari Tugas 3, serta menghubungkan setiap data pada page dengan sebuah halaman detail <br>
Poin 4 = Membuat file untuk menampilkan bagian detail yang berasal dari data yaitu mywatchlist_details.dart <br>
Poin 5 = Membuat sebuah elevated button dengan push replacement ke halaman sebelumnya <br>

