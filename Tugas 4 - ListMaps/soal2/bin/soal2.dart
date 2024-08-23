// import 'package:soal2/soal2.dart' as soal2;

void main() {
  print(rangeWithStep(30, 23, 3));
}

rangeWithStep(int num1, int num2, int step) {
  if (step == 0) {
    step = 1;
  }

  var result = [];
  if (num1 < num2) {
    // return [];
    for (var i = num1; i < num2; i += step) {
      result.add(i);
    }
  } else {
    for (var i = num1; i > num2; i -= step) {
      result.add(i);
    }
    return result;
  }
}
