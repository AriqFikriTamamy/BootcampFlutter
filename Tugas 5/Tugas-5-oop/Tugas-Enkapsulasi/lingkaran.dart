import 'dart:math';

class Lingkaran {
  late double _ruas;

  // Lingkaran(this._ruas);

  // double get ruas => _ruas;

  // set ruas(dynamic ruas){

  //   _ruas = ruas;
  // }

  void setRuas(double value) {
    if (value < 0) {
      _ruas = value * -1;
    } else {
      _ruas = value;
    }
  }

  double getRuas() => _ruas;

  double hitungLuas() => pi * _ruas * _ruas;
}
