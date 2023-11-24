import 'package:crud/home_controller.dart';
import 'package:crud/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(child: HomePage()
      ),
    );
  }
}