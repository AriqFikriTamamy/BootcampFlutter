// Intro
void main() {
  print("Hello World");
  print("Hello Dart");

  // Variable
  var name = "John";
  var number = 12;
  var todayIsFriday = false;
  var items;

  print(name);
  print(number);
  print(todayIsFriday);
  print(items);

  // Opeerator

  //Assignment Operator
  // var angka;
  // angka = 10;
  // print(angka);

  // Comparison Operator
  var angka = 100;
  print(angka == 100);
  print(angka == 20); //Equal Operator

  var characteristic = "rajin";
  print(characteristic != "lazy");
  print(characteristic != "wayward"); //Not Equal Operator

  // Conditional Operator
  // print(true || true);
  // print(true || false);
  // print(true || false || false);
  // print(false || false); //OR Operator

  // print(true && true);
  // print(true && false);
  // print(false && false);
  // print(false && true && true);
  // print(true && true && true); //AND Operator

  //Data Type

  //String
  var sentences = "dart";
  print(sentences[0]);
  print(sentences[2]);

  //Numbers
  //declare an integer
  int num1 = 10;

  //declare a double value
  double num2 = 10.50;

  //print the values
  print(num1);
  print(num2);

  //Change string to integer
  print(num.parse('12'));
  print(num.parse('10.91'));

  //Change integer to string
  int j = 45;
  String t = "$j";
  print("hello " + t);
}
