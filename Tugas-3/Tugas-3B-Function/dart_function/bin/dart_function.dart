// import 'package:dart_function/dart_function.dart' as dart_function;

import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${dart_function.calculate()}!');

  //teriak()
  teriak() {
    print('Halo Sanbers!');
  }

  teriak();

  //kalikan()
  kalikan(num1, num2) {
    return num1 * num2;
  }

  var num1 = 12;
  var num2 = 4;

  var hasilKali = kalikan(num1, num2);
  print(hasilKali);

  //introduce()
  introduce(name, age, address, hobby) {
    return 'Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!';
  }

  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);

  //Faktorial
  functionhitungFaktorial() {
    stdout.writeln('Masukkan bilangan bulat: ');
    int? n = int.parse(stdin.readLineSync()!);
    int faktorial = 1;
    if (n <= 0) {
      return 1;
    } else {
      for (int i = 1; i <= n; i++) {
        faktorial *= i;
      }
    }
    print(faktorial);
  }

  functionhitungFaktorial();
}
