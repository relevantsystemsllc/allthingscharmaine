import 'package:flutter/material.dart';
import 'screens/category_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          unselectedWidgetColor: Color(0xFFED9B9D), fontFamily: 'Poppins'),
      home: CategoryScreen(),
    );
  }
}
