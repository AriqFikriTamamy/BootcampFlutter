// Ternary Operator
import 'dart:io';

void main() {
  // var dartInstall = y;
  stdout.writeln('Apakah anda ingin menginstall aplikasi Dart? (Y/N)');
  final dartInstall = stdin.readLineSync();

  if (dartInstall == true) {
    // print("Anda akan menginstall aplikasi Dart");
    stdout.writeln("Anda akan menginstall Dart");
  } else {
    // print("aborted");
    stdout.writeln("aborted");
  }
}
