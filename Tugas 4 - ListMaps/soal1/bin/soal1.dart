// import 'package:soal1/soal1.dart' as soal1;

void main() {
  // print('Sebelum pengurutan: $number');
  // var number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  range(num1, num2) {
    if (num2 == 'undefined') {
      num2 = num1;
      num1 = 0;
    }
    if (num1 <= num2) {
      return [];
    }
    // if (num1 >= num2) {
    //   return [];
    // }

    var result = [];
    for (var i = num1; i >= num2; i--) {
      result.add(i);
    }
    // for (var i = num1; i <= num2; i++) {
    //   result.add(i);
    // }
    return result;
  }

  print(range(10, 1));
  print(range(1, 10));
}
