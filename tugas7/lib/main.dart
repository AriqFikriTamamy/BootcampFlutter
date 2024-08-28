import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Page'),
        ),
        body: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          InkWell(
              onTap: () {
                counter--;
                setState(() {});
              },
              child: const Icon(Icons.remove)),
          const SizedBox(width: 20),
          Text('Nilai Counter : $counter'),
          const SizedBox(width: 20),
          InkWell(
              onTap: () {
                counter++;
                setState(() {});
              },
              child: const Icon(Icons.add)),
        ])));
  }
}

//ANALISIS TERHADAP SETSTATE
//APA KEGUNAAN

// Pada kasus kali ini, terdapat program berupa aplikasi counter. Untuk itu digunakanlah widget untuk membuat fungsi counter tersebut, dalam hal ini menggunakan statefull widget. Statefull widget digunakan agar widget tersebut dapat berubah ketika user melakukan interaksi terhadap aplikasi ini, singkatnya widget ini jadi bersifat dinamis. Untuk memicu adanya perubahan setelah adanya interaksi user terhadap UI aplikasi, maka dibuatlah fungsi setstate untuk mengeksekusi state widget tersebut, jika tidak ada perintah setstate maka interaksi user tidak akan berpengaruh terhadap aplikasi sehingga widget tersebut tidak lagi bersifat dinamis. Oleh karena itu diperlukan method setstate terhadap statefull widget agar widget berjalan sesuai fungsinya.