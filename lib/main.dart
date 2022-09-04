import 'package:flutter/material.dart';
import 'package:plu_codes_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'PLU Codes',
      theme: ThemeData(primaryColor: Colors.white),
      home: HomeScreen(),
    );
  }
}
