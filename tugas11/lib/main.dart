import 'package:flutter/material.dart';
import 'package:tugas11/user/page/user_page.dart';
// import 'user/model/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Rest API',
      home: UserPage(),
    );
  }
}
