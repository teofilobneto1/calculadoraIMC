import 'package:flutter/material.dart';
import 'package:imc_app/screens/calc_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: CalcScreen(),
      theme: ThemeData(backgroundColor: Colors.amber),
      debugShowCheckedModeBanner: false,
    );
  }
}

// EspeciesScreen()