import 'dart:async';

//Kelas Kategori
class Kategori {
  String _kodeKategori = "";//Atribut kode kategori
  String _namaKategori = "";//Atribut nama kategori

  Kategori(String kodeKategori, String namaKategori) {//Konstruktor
    this._kodeKategori = kodeKategori;
    this._namaKategori = namaKategori;
  }
  //Getter-Setter
  String get kodeKategori {
    return _kodeKategori;
  }

  String get namaKategori {
    return _namaKategori;
  }

  set kodeKategori(String id) {
    _kodeKategori = id;
  }

  set namaKategori(String nama) {
    _namaKategori = nama;
  }
}

//Kelas Barang
class Barang extends Kategori {
  String _nama = "";//Atribut nama barang
  int _harga = 0;//Atribut harga
  String _merk = "";//Atribut merk
  double _berat = 0.0;//Atribut berat

  Barang(String nama, int harga, String merk, double berat, String idKategori, String namaKategori): super(idKategori, namaKategori) {//Konstruktor
    this._nama = nama;
    this._harga = harga;
    this._merk = merk;
    this._berat = berat;
  }
  //Getter-Setter
  String get nama {
    return _nama;
  }

  int get harga {
    return _harga;
  }

  String get merk {
    return _merk;
  }

  double get berat {
    return _berat;
  }

  set nama(String nama) {
    _nama = nama;
  }

  set harga(int harga) {
    _harga = harga;
  }

  set merk(String merk) {
    _merk = merk;
  }

  set berat(double berat) {
    _berat = berat;
  }

  @override
  String toString() {
    return 'Kategori: ${namaKategori}\nID: ${kodeKategori}\nBarang: $_nama\nHarga: Rp${_harga.toString()}\nMerk: $_merk\nBerat: ${_berat.toString()} Kg\n';
  }
}

//Kelas KeranjangBelanja
class KeranjangBelanja {
  List<Barang> _barangBelanja = [];//Atrribut barang belanja
  //Getter-Setter
  KeranjangBelanja(List<Barang> barang){
    this._barangBelanja = barang;
  }
  
  List<Barang> get barangBelanja {
    return _barangBelanja;
  }

  set barangBelanja(List<Barang> barang) {
    _barangBelanja = barang;
  }

  void tambahBarang(Barang barang) {//Method tambah barang satu per satu
    _barangBelanja.add(barang);
  }

  Future<void> checkout() async {//Method proses pembayaran secara asyncron
    print('Memproses pembayaran...');
    await Future.delayed(Duration(seconds: 2)); // Simulasi proses pembayaran
    int total = _hitungTotal();
    print('Pembayaran berhasil.\nTotal pembayaran: Rp${total.toStringAsFixed(2)}');
  }

  int _hitungTotal() {//Method untuk menghitung total harga barang dalam keranjang
    int total = 0;
    for (var barang in _barangBelanja) {
      total += barang.harga;
    }
    return total;
  }

  @override
  String toString() {
    String daftarBarang = 'Keranjang Belanja:\n';
    for (var barang in _barangBelanja) {
      daftarBarang += '${barang.toString()}\n';
    }
    return daftarBarang;
  }
}

void main() {
  //Daftar barang
  Barang laptop = Barang('Laptop', 12000000, 'Asus', 2.5, 'KTG001', 'Elektronik');
  Barang mouse = Barang('Mouse Wireless', 200000, 'Logitech', 0.2, 'KTG002', 'Aksesoris Komputer');
  Barang headphone = Barang('Headphone', 500000, 'Sony', 0.4, 'KTG001', 'Elektronik');
  Barang keyboard = Barang('Keyboard', 300000, 'Corsair', 1.0, 'KTG002', 'Aksesoris Komputer');
  Barang monitor = Barang('Monitor', 1500000, 'Dell', 3.0, 'KTG001', 'Elektronik');
  Barang printer = Barang('Printer', 800000, 'HP', 5.0, 'KTG001', 'Elektronik');
  Barang speaker = Barang('Speaker', 400000, 'JBL', 1.5, 'KTG001', 'Elektronik');
  Barang flashdrive = Barang('Flashdrive', 100000, 'SanDisk', 0.1, 'KTG002', 'Aksesoris Komputer');
  Barang webcam = Barang('Webcam', 250000, 'Logitech', 0.3, 'KTG002', 'Aksesoris Komputer');
  Barang router = Barang('Router', 600000, 'TP-Link', 0.8, 'KTG001', 'Elektronik');

  //Buat list daftar barang
  List<Barang> daftarBarang = [laptop, mouse, headphone, keyboard, monitor, printer, speaker, flashdrive, webcam, router];

  KeranjangBelanja keranjang = KeranjangBelanja(daftarBarang); //Inisialisasi dengan daftar barang
  print(keranjang);

  keranjang.checkout();
}

