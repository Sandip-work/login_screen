
import 'package:flutter/material.dart';
import 'package:untitled/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facio Login App',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}