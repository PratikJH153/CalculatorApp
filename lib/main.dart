import 'package:calculatorapp/views/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator App",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF16191a),
        primaryColor: const Color(0xFF222428),
      ),
      home: const HomePage(),
    );
  }
}
