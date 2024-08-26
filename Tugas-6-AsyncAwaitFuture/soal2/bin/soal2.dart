// import 'package:soal2/soal2.dart' as soal2;

main(List<String> arguments) {
  print('Life');
  delayedMessage(2, 'never flat').then((flat) {
    print(flat);
  });
  print('is');
}

Future delayedMessage(int seconds, String message) {
  final duration = Duration(seconds: seconds);
  return Future.delayed(duration).then((value) => message);
}
