import 'package:flutter/material.dart';
import 'package:wanne/Pages/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 4, 140, 92),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent, // Set the app bar color to transparent
        ),
      ),
      home: const Index(),
      title: 'Proizvodnja paleta i drvnih proizvoda | Wanne d.o.o.',
      debugShowCheckedModeBanner: false,
    );
  }
}
