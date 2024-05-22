import 'package:flutter/material.dart';
import 'package:kidslearningapp/screens/homepage.dart';
import 'package:kidslearningapp/widgets/card.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kid Learning App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CardScreen(),
    );
  }
}

