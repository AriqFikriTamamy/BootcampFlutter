// import 'package:soal3/soal3.dart' as soal3;

void main() {
  print('Ready. sing');
  print(line());
  print(line2());
  print(line3());
  print(line4());
}

line() {
  return Future.delayed(
      Duration(seconds: 5), () => print('pernahkah kau merasa'));
}

line2() {
  return Future.delayed(
      Duration(seconds: 8), () => print('pernahkah kau merasa'));
}

line3() {
  return Future.delayed(
      Duration(seconds: 10), () => print('pernahkah kau merasa'));
}

line4() {
  return Future.delayed(Duration(seconds: 11),
      () => print('Hatimu hampa, pernahkah kau merasa, hati mu kosong'));
}
