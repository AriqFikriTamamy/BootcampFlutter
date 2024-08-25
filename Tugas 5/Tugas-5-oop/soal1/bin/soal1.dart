// import 'package:soal1/soal1.dart' as soal1;

void main() {
  // double setengah = 0.5;
  // double alas = 20.0;
  // double tinggi = 30.0;

  // var luasSegitiga = setengah * alas * tinggi;
  // print(luasSegitiga);

  // Triangle luas;
  // double luasSegitiga;

  // luas = hitungLuas();
  // luas.setengah = 0.5;
  // luas.alas = 20.0;
  // luas.tinggi = 30.0;

  // luasSegitiga = luas.hitungLuas();
  Triangle segitiga = Triangle(0.5, 20.0, 30.0);
  double luasSegitiga = segitiga.hitungLuas();

  print(luasSegitiga);
}

class Triangle {
  double setengah;
  double alas;
  double tinggi;

  Triangle(this.setengah, this.alas, this.tinggi);

  double hitungLuas() {
    return setengah * alas * tinggi;
  }

  // var luasSegitiga = setengah * alas * tinggi;
  // print(luasSegitiga);
}
