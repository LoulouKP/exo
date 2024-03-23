import 'package:devoir/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:devoir/screens/home_page.dart';
import 'package:devoir/screens/modifier_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhomepage(),
    );
  }
}
