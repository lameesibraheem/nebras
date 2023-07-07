import 'package:flutter/material.dart';
import 'package:siratproject/chatscreen.dart';
import 'package:siratproject/createacc.dart';
import 'package:siratproject/shorts.dart';
import 'package:siratproject/signup.dart';
import 'package:siratproject/splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:signup(),
    );
  }
}

