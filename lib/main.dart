import 'package:flutter/material.dart';
import 'package:restaurant_menu/models/data.dart';
import 'package:restaurant_menu/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
