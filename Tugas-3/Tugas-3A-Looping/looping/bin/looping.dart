// import 'package:looping/looping.dart' as looping;

void main() {
  // Looping While
  // print('LOOPING PERTAMA');
  // int first = 1;
  // while (first <= 20) {
  //   if (first % 2 == 0) {
  //     print('$first - I love coding');
  //   }
  //   first++;
  // }

  // print('LOOPING KEDUA');
  // int second = 20;
  // while (second >= 0) {
  //   if (second % 2 == 0) {
  //     print('$second - I will become a mobile developer');
  //   }
  //   second--;
  // }

  // Looping For
  // for (var loop = 1; loop <= 20; loop++) {
  //   if (loop % 3 == 0 && loop % 2 == 1) {
  //     print('$loop - I Love Coding');
  //   } else if (loop % 2 == 0) {
  //     print('$loop - Berkualitas');
  //   } else if (loop % 2 == 1) {
  //     print('$loop - Santai');
  //   }
  // }

// Persegi Panjang
  // for (var i = 1; i < 5; i++) {
  //   print('########');
  // }

  //Tangga
  var stairs = '';
  for (var i = 0; i < 8; i++) {
    for (var j = 0; j < i; j++) {
      stairs += '#';
    }
    stairs += '\n';
  }
  print(stairs);
}
