// import 'package:perpustakaan/perpustakaan.dart' as perpustakaan;

void main(List<String> arguments) {
  Buku buku1 = Buku("Pemrograman Dart", "John Doe", "9876543210", 3);
  Anggota anggota1 = Anggota("Jane Smith", "A002", "Jl. Sudirman No. 2");
  Petugas petugas1 = Petugas("Admin", "P001");

  petugas1.login('password123');

  petugas1.kelolaBuku(buku: buku1, aksi: 'tambah', jumlah: 3);
  petugas1.kelolaBuku(buku: buku1, aksi: 'hapus', jumlah: 2);

  Buku editBuku =
      Buku('Pemrograman Baru', 'Joko Tingkir', '978-602-8519-93', 2);
  petugas1.kelolaBuku(buku: buku1, aksi: 'edit', editBuku: editBuku);

  Peminjaman peminjaman1 = Peminjaman(buku1, anggota1, DateTime.now());
  peminjaman1.pinjamBuku();
  peminjaman1.lihatRiwayat();
  peminjaman1.kembalikanBuku();
  peminjaman1.lihatRiwayat();
}

class Buku {
  String judul;
  String pengarang;
  String isbn;
  int jumlah;

  Buku(this.judul, this.pengarang, this.isbn, this.jumlah);

  void tambahBuku(int jumlah) {
    this.jumlah += jumlah;
    print('$judul buku berhasil ditambahkan. Jumlah sekarang: ${this.jumlah}');
  }

  void hapusBuku(int jumlah) {
    if (this.jumlah >= jumlah) {
      this.jumlah -= jumlah;
      print('$judul berhasil dihapus. Jumlah sekarang: ${this.jumlah}');
    } else {
      print(
          'Tidak ada buku yang dapat dihapus. Jumlah buku sekarang ${this.jumlah}');
    }
  }

  void editBuku({String? judulBaru, String? pengarangBaru, String? isbnBaru}) {
    if (judulBaru != null) {
      judul = judulBaru;
    }
    if (pengarangBaru != null) {
      pengarang = pengarangBaru;
    }
    if (isbnBaru != null) {
      isbn = isbnBaru;
    }
    print('Info buku berhasil diperbarui');
  }

  void tampilkanInfo() {
    print('Judul: $judul, Pengarang: $pengarang, ISBN: $isbn, Jumlah: $jumlah');
  }
}

class Anggota {
  String nama;
  String idAnggota;
  String alamat;

  Anggota(this.nama, this.idAnggota, this.alamat);

  void daftarAnggota() {
    print('$nama berhasil ditambahkan sebagai anggota perpustakaan.');
  }

  void hapusAnggota() {
    print('$nama berhasil dihapus dari keanggotaan perpustakaan.');
  }

  void editAnggota(String namaBaru, String alamatBaru) {
    nama = namaBaru;
    alamat = alamatBaru;
  }

  void tampilkanInfo() {
    print('Nama: $nama, ID Anggota: $idAnggota, Alamat: $alamat');
  }
}

class Peminjaman {
  Buku buku;
  Anggota anggota;
  DateTime tanggalPinjam;
  DateTime? tanggalKembali;

  Peminjaman(this.buku, this.anggota, this.tanggalPinjam,
      [this.tanggalKembali]);

  void pinjamBuku() {
    if (buku.jumlah > 0) {
      buku.jumlah -= 1;
      print('===== Proses Pinjam Buku ======');
      print(
          '${anggota.nama} berhasil meminjam buku "${buku.judul}" pada tanggal $tanggalPinjam');
      print('==================\n');
    } else {
      print('Buku dengan judul "${buku.judul}" tidak tersedia untuk dipinjam.');
    }
    // print(
    //     '${anggota.nama} meminjam buku "${buku.judul}" pada tanggal $tanggalPinjam.');
  }

  void kembalikanBuku() {
    tanggalKembali = DateTime.now();
    print('===== Proses Pengembalian Buku ======');
    print(
        '${anggota.nama} mengembalikan buku "${buku.judul}" pada tanggal $tanggalKembali.');
    print('==================\n');
  }

  void lihatRiwayat() {
    print('===== Proses Lihat Riwayat Peminjaman ======');
    print(
        'Riwayat peminjaman: ${anggota.nama} meminjam "${buku.judul}" pada $tanggalPinjam.');
    if (tanggalKembali != null) {
      print(' dan mengembalikan pada $tanggalKembali.');
    }
    print('==================\n');
  }
}

class Petugas {
  String nama;
  String idPetugas;

  Petugas(this.nama, this.idPetugas);

  bool login(password) {
    if (password == 'password123') {
      print('$nama berhasil login.');
      return true;
    } else {
      print('Login gagal: password salah.');
      return false;
    }
  }

  Future<void> kelolaBuku(
      {required Buku buku,
      Buku? editBuku,
      required String aksi,
      int? jumlah}) async {
    if (aksi == 'tambah') {
      print('===== Tambah Buku =====');
      buku.tambahBuku(jumlah ?? 1);
      print('======================\n');
    } else if (aksi == 'hapus') {
      print('====== Hapus Buku ======');
      buku.hapusBuku(jumlah ?? 1);
      print('======================\n');
    } else if (aksi == 'edit') {
      print('======= Edit Buku ========');
      if (editBuku != null) {
        buku.editBuku(
            judulBaru: editBuku.judul,
            isbnBaru: editBuku.isbn,
            pengarangBaru: editBuku.pengarang);
      } else {
        print('Masukkan Parameter EditBuku ');
      }
      print('======================\n');
      print('===== Hasil Pembaharuan Buku =====');
      buku.tampilkanInfo();
      print('======================\n');
    }
  }

  void kelolaAnggota(Anggota anggota, String aksi,
      [String? nama, String? alamat]) {
    if (aksi == 'daftar') {
      anggota.daftarAnggota();
    } else if (aksi == 'hapus') {
      anggota.hapusAnggota();
    } else if (aksi == 'edit') {
      anggota.editAnggota(nama ?? 'nama baru', alamat ?? 'alamat baru');
    }
  }

  void tampilkanInfo() {
    print('Nama Petugas: $nama, ID Petugas: $idPetugas');
  }
}
