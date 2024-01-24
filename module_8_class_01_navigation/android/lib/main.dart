import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import HomeActivity
import 'package:module_8_class_01_navigation/HomeActivity.dart';
import 'package:module_8_class_01_navigation/LoginActivity.dart';
import 'package:module_8_class_01_navigation/ProfileActivity.dart';

import 'HomeActivity.dart';
import 'LoginActivity.dart';
import 'ProfileActivity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeActivity(),
        '/profile': (context) => ProfileActivity(),
        '/login': (context) => LoginActivity(),
      },
    );
  }
}
