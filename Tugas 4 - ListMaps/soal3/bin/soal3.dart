// import 'package:soal3/soal3.dart' as soal3;

void main() {
  dataHandling(input);
}

var input = [
  ['0001', 'Roman Alamsyah', 'Bandar Lampung', '21/05/1989', 'Membaca'],
  ['0002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain gitar'],
  ['0003', 'Winona', 'Ambon', '25/12/1965', 'Memasak'],
  ['0004', 'Bintang Senjaya', 'Martapura', '6/04/1970', 'Berkebun']
];

// var map = input.asMap();
// print(map);

dataHandling(data) {
  // for (var i in input) {
  //   // print(i);
  //   for (var data = 1; data < input.length; data++) {
  //     print('Nomor ID: $i');
  //     print('Nama Lengkap: $i');
  //     print('TTL: $i');
  //     print('Hobby: $i');
  //   }
  // }
  // input.forEach((data) => data.forEach((array) => print(array)));
  // print('Nomor ID: ' + input[0][0]);

  // for (var i = 0; i < input.length; i++) {
  //   for (var j = 0; j < input.length; j++) {
  //     // print('Nomor ID: ' + input[i][j]);
  //     // print('Nama Lengkap: ' + input[i][j]);
  //     // print('TTL: ' + input[i][j]);
  //     // print('Hobby: ' + input[i][j]);
  //     // print(input[i][j]);
  //   }
  // }

  print('Nomor ID: ' + input[0][0]);
  print('Nama Lengkap: ' + input[0][1]);
  print('TTL: ' + input[0][2] + ' ' + input[0][3]);
  print('Hobby: ' + input[0][4]);
  print('');
  print('Nomor ID: ' + input[1][0]);
  print('Nama Lengkap: ' + input[1][1]);
  print('TTL: ' + input[1][2] + ' ' + input[1][3]);
  print('Hobby: ' + input[1][4]);
  print('');
  print('Nomor ID: ' + input[2][0]);
  print('Nama Lengkap: ' + input[2][1]);
  print('TTL: ' + input[2][2] + ' ' + input[2][3]);
  print('Hobby: ' + input[2][4]);
  print('');
  print('Nomor ID: ' + input[3][0]);
  print('Nama Lengkap: ' + input[3][1]);
  print('TTL: ' + input[3][2] + ' ' + input[3][3]);
  print('Hobby: ' + input[3][4]);
  print('');
}
