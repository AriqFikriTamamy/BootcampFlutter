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
  for (var i in input) {
    // print(i);
    for (var data = 1; data < input.length; data++) {
      print('Nomor ID: $i');
      print('Nama Lengkap: $i');
      print('TTL: $i');
      print('Hobby: $i');
    }
  }
  // input.forEach((data) => data.forEach((array) => print(array)));
  // print('Nomor ID: ' + input[0][0]);
}
