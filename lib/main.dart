import 'package:flutter/material.dart';
import 'package:my_bmi/screens/input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromRGBO(17, 21, 56, 1),
        primaryColor: Color.fromRGBO(17, 21, 56, 1),
        focusColor: Color.fromRGBO(40, 40, 80, 1),
      ),
      home: InputPage(),
    );
  }
}
