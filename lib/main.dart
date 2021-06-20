import 'package:flutter/material.dart';
import 'package:lms/screens/Addresources.dart';
import 'package:lms/screens/Create.dart';
import 'screens/Welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      routes: {
        '/addresources': (context) => Addresources(),
        '/create': (context) => Create(),
      },
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}
