// void main() {
//   //Membuat Kalimat
//   var word = 'Dart';
//   var second = 'is';
//   var third = 'awesome';
//   var fourth = 'and';
//   var fifth = 'i';
//   var sixth = 'love';
//   var seventh = 'it!';

//   print(word +
//       ' ' +
//       second +
//       ' ' +
//       third +
//       ' ' +
//       fourth +
//       ' ' +
//       fifth +
//       ' ' +
//       sixth +
//       ' ' +
//       seventh);

//   //Mengurai Kalimat
//   var sentence = "I am going to be Flutter Developer";

//   var exampleFirstWord = sentence[0];
//   var exampleSecondWord = sentence[2] + sentence[3];
//   var thirdWord =
//       sentence[5] + sentence[6] + sentence[7] + sentence[8] + sentence[9];
//   var fourthWord = sentence[11] + sentence[12];
//   var fifthWord = sentence[14] + sentence[15];
//   var sixthWord = sentence[17] +
//       sentence[18] +
//       sentence[19] +
//       sentence[20] +
//       sentence[21] +
//       sentence[22] +
//       sentence[23];
//   var seventhWord = sentence[25] +
//       sentence[26] +
//       sentence[27] +
//       sentence[28] +
//       sentence[29] +
//       sentence[30] +
//       sentence[31] +
//       sentence[32] +
//       sentence[33];

//   print('First Word:' + ' ' + exampleFirstWord);
//   print('Second Word:' + ' ' + exampleSecondWord);
//   print('Third Word:' + ' ' + thirdWord);
//   print('Fourth Word:' + ' ' + fourthWord);
//   print('Fifth Word:' + ' ' + fifthWord);
//   print('Sixth Word:' + ' ' + sixthWord);
//   print('Seventh Word:' + ' ' + seventhWord);
// }

//Input Nama Depan dan Belakang
// import 'dart:io';

// void main() {
//   //From dart documentation about stdin
//   // stdout.writeln('Type something');
//   // final input = stdin.readLineSync();
//   // stdout.writeln('You typed: $input');

//   stdout.writeln('Masukkan Nama Depan: ');
//   final first = stdin.readLineSync();
//   stdout.writeln('Masukkan Nama Belakang: ');
//   final last = stdin.readLineSync();
//   stdout.writeln('Nama Lengkap Anda adalah: $first $last');
// }

//Operator Aritmatika
void main() {
  const a = 5;
  const b = 10;

  int plus = a + b;
  int min = a - b;
  int cross = a * b;
  double divide = a / b;

  print("Penjumlahan: $plus");
  print("Pengurangan: $min");
  print("Perkalian: $cross");
  print("Pembagian: $divide");
}
