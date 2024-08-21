// Ternary Operator
// import 'dart:io';

// void main() {
//   stdout.writeln('Apakah anda ingin menginstall aplikasi Dart? (Y/T)');

//   var installDart = stdin.readLineSync();
//   var install = installDart;

//   //Non Ternary
//   // if (install == "y" || install == "Y") {
//   //   print("Anda akan menginstall aplikasi Dart");
//   // } else if (install == "t" || install == "T") {
//   //   print("aborted");
//   // } else {
//   //   print("failed");
//   // }

//   // Ternary
//   // (install == "y" || install == "Y")
//   //     ? print("Anda akan menginstall Dart")
//   //     : (install == "t" || install == "T")
//   //         ? print("aborted")
//   //         : print("failed");
// }

// If-else if dan else

// import 'dart:io';

// void main() {
//   stdout.writeln("Masukkan Nama Anda: ");
//   dynamic inputNama = stdin.readLineSync();
//   stdout.writeln("Masukkan peran Anda: ");
//   var inputPeran = stdin.readLineSync();

//   var nama = inputNama;
//   var peran = inputPeran;

//   if (nama == "John" && peran == "") {
//     print("Halo John, Pilih peranmu untuk memulai game!");
//   } else if (nama == "Jane" && peran == "Penyihir") {
//     print("Selamat datang di dunia Werewolf, Jane");
//     print(
//         "Halo Penyihir Jane, kamu dapat melihat siapa yang menjadi werewolf!");
//   } else if (nama == "Jenita" && peran == "Guard") {
//     print("Selamat datang di Dunia Werewolf, Jenita");
//     print(
//         "Halo Guard Jenita, kamu akan membantu melindungi temanmu dari serangan werewolf!");
//   } else if (nama == "Junaedi" && peran == "Werewolf") {
//     print("Selamat Datang di Dunia Werewolf, Junaedi");
//     print("Halo Werewolf Junaedi, kamu akan memakan mangsa setiap malam!");
//   } else if (nama == "" && peran == "") {
//     print("Nama harus diisi!");
//   } else {
//     print("coba lagi");
//   }
// }

// Switch Case
//Hari
// import 'dart:io';

void main() {
  // stdout.writeln("Hari ini adalah hari: ");
  // String? hari = stdin.readLineSync();

  // switch (hari) {
  //   case 'Senin' || 'senin':
  //     print(
  //         "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
  //     break;
  //   case 'Selasa' || 'selasa':
  //     print(
  //         'Setiap detik sangatlah berharag karena waktu mengetahui banyak hal, termasuk rahasia hati.');
  //     break;
  //   case 'Rabu' || 'rabu':
  //     print(
  //         'Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.');
  //     break;
  //   case 'Kamis' || 'kamis':
  //     print(
  //         'Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit kepada orang lain.');
  //     break;
  //   case 'Jumat' || 'jumat':
  //     print('Hidup tak selamanya tentang pacar');
  //     break;
  //   case 'Sabtu' || 'sabtu':
  //     print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.');
  //     break;
  //   case 'Minggu' || 'minggu':
  //     print(
  //         'Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.');
  //     break;
  //   case '':
  //     print('Masukkan hari dengan benar');
  //     break;
  //   default:
  //     print('Silahkan coba lagi');
  // }

  //Format Tanggal
  int? tanggal = 1;
  int? bulan = 5;
  int? tahun = 1945;

  switch (bulan) {
    case 1:
      print('$tanggal Januari $tahun');
      break;
    case 2:
      print('$tanggal Februari $tahun');
      break;
    case 3:
      print('$tanggal Maret $tahun');
      break;
    case 4:
      print('$tanggal April $tahun');
      break;
    case 5:
      print('$tanggal Mei $tahun');
      break;
    case 6:
      print('$tanggal Juni $tahun');
      break;
    case 7:
      print('$tanggal Juli $tahun');
      break;
    case 8:
      print('$tanggal Agustus $tahun');
      break;
    case 9:
      print('$tanggal September $tahun');
      break;
    case 10:
      print('$tanggal Oktober $tahun');
      break;
    case 11:
      print('$tanggal November $tahun');
      break;
    case 12:
      print('$tanggal Desember $tahun');
      break;
    default:
  }
}
