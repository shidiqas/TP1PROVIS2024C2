# TP1PROVIS2024C2

Program Dart ini menunjukkan penggunaan prinsip Pemrograman Berorientasi Objek (OOP) dan pemrograman asinkron. Program ini mensimulasikan sistem keranjang belanja online di mana pengguna dapat menambahkan barang ke keranjang dan melanjutkan ke proses checkout secara asinkron.

## Deskripsi Program

### Kelas Kategori
- Mewakili kategori barang.
- Merupakan kelas induk dari kelas Barang.
- Memiliki atribut privat `kodeKategori` dan `namaKategori`.
- Menyediakan metode getter dan setter untuk atribut-atribut tersebut.

### Kelas Barang
- Mewakili sebuah barang yang dapat ditambahkan ke keranjang belanja.
- Merupakan kelas turunan dari kelas Kategori
- Memiliki atribut privat `nama`, `harga`, `merk`, dan `berat`.
- Menyediakan metode getter dan setter untuk atribut-atribut tersebut.
- Mengimplementasikan metode `toString()` untuk menampilkan detail barang.

### Kelas KeranjangBelanja
- Mewakili keranjang belanja yang berisi daftar barang.
- Menyediakan metode `tambahBarang()` untuk menambahkan barang ke keranjang.
- Menyediakan metode `checkout()` untuk mensimulasikan proses pembayaran secara asinkron.
- Menggunakan `Future.delayed` untuk mensimulasikan proses pembayaran.
- Menghitung total harga barang di keranjang.
- Mengimplementasikan metode `toString()` untuk menampilkan isi keranjang belanja.

### Alur Program
- Membuat daftar barang menggunakan kelas Barang
- Memasukan daftar tersebut ke List
- Memulai proses checkout secara asinkron.

<img width="770" alt="Screenshot 2024-03-12 142554" src="https://github.com/shidiqas/TP1PROVIS2024C2/assets/118581965/0a7f1504-56d6-4479-b4cf-df01cc3bafa2">
<img width="761" alt="Screenshot 2024-03-12 142612" src="https://github.com/shidiqas/TP1PROVIS2024C2/assets/118581965/0ab4805c-3164-40d1-9cce-021e32c63076">

