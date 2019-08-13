import 'package:flutter/material.dart';
import 'package:piccopy/screens/home/home.dart';
import 'package:piccopy/screens/payment/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.grey[200],
      ),
      routes: {
        "/": (context) => HomePage(),
      },
    );
  }
}
