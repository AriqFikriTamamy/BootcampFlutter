// Ternary Operator
import 'dart:io';

void main() {
  stdout.writeln('Apakah anda ingin menginstall aplikasi Dart? (Y/T)');
  // var dartInstall = stdin.readLineSync();

  // var install = dartInstall;
  // if (install == true) {
  //   // print("Anda akan menginstall aplikasi Dart");
  //   stdout.writeln("Anda akan menginstall Dart");
  // } else {
  //   // print("aborted");
  //   stdout.writeln("aborted");
  // }

  var installDart = stdin.readLineSync();
  var install = installDart;

  if (install == "y" || install == "Y") {
    print("Anda akan menginstall aplikasi Dart");
  } else if (install == "t" || install == "T") {
    print("aborted");
  } else {
    print("failed");
  }
}
