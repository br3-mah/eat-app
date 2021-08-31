import 'package:bookie/constants.dart';
import 'package:flutter/material.dart';
import 'package:bookie/screens/home/home-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Eat App",
      // theme: ThemeData.dark(),
      theme: ThemeData(
        primaryColor: Color(0xFFFFC61F),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          body1: TextStyle(color: ksecondaryColor),
          body2: TextStyle(color: ksecondaryColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
