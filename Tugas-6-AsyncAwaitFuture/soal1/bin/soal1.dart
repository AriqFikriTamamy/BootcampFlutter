// import 'package:soal1/soal1.dart' as soal1;

void main(List<String> arguments) {
  var h = Human();
  print('Luffy');
  print('Zorro');
  print('Killer');
  print(h.name);
  h.getName();
  // print(h.name);
}

class Human {
  String name = 'Nama Character One Piece';

  Future<void> getName() async {
    // await Future.delayed(Duration(seconds: 3));
    name = 'Rafi';
    await Future.delayed(Duration(seconds: 3));
    print('get data[done], name 3: $name');
  }
}
