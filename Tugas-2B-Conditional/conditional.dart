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

// If-else is dan else

import 'dart:io';

void main() {
  stdout.writeln("Masukkan Nama Anda: ");
  dynamic inputNama = stdin.readLineSync();
  stdout.writeln("Masukkan peran Anda: ");
  var inputPeran = stdin.readLineSync();

  var nama = inputNama;
  var peran = inputPeran;

  if (nama == "John" && peran == "") {
    print("Halo John, Pilih peranmu untuk memulai game!");
  } else if (nama == "Jane" && peran == "Penyihir") {
    print("Selamat datang di dunia Werewolf, Jane");
    print(
        "Halo Penyihir Jane, kamu dapat melihat siapa yang menjadi werewolf!");
  } else if (nama == "Jenita" && peran == "Guard") {
    print("Selamat datang di Dunia Werewolf, Jenita");
    print(
        "Halo Guard Jenita, kamu akan membantu melindungi temanmu dari serangan werewolf!");
  } else if (nama == "Junaedi" && peran == "Werewolf") {
    print("Selamat Datang di Dunia Werewolf, Junaedi");
    print("Halo Werewolf Junaedi, kamu akan memakan mangsa setiap malam!");
  } else if (nama == "" && peran == "") {
    print("Nama harus diisi!");
  } else {
    print("coba lagi");
  }
}
