// import 'package:soal1/soal1.dart' as soal1;

void main() {
  range(num1, num2) {
    List? list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    if (num1 > num2) {
      list.sort((num1, num2) => num1.compareTo(num2));
    } else {
      list.sort((num2, num1) => num1.compareTo(num2));
    }
  }

  print(range(10, 1));
  print(range(1, 10));
}
