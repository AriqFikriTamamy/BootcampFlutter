// import 'package:lingkaran/lingkaran.dart' as lingkaran;
import 'lingkaran.dart';

void main(List<String> args) {
  var lingkaran = Lingkaran();

  lingkaran.setRuas(-5);

  // print('Radius: ${lingkaran.getRuas()}');
  print('Luas Lingkaran: ${lingkaran.hitungLuas()}');
}
