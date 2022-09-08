import 'package:flutter/material.dart';
import 'package:web_page/pages/home_screen.dart';
import 'package:web_page/themes/theme1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title                     : 'Flutter Demo',
      theme                     : theme1,
      home                      : HomeScreen(),
    );
  }
}

