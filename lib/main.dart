import 'package:flutter/material.dart';
import 'package:quickdeliver/View/Screens/navBar_screen.dart';

import 'View/Screens/home_screen.dart';
import 'View/Screens/mandob.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appbar,
        body: HomeScreen(),
      ),
    );
  }
}
