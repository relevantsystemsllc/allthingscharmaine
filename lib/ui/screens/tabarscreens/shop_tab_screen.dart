
import 'package:flutter/material.dart';

class ShopTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/homegreen.png"),
          fit: BoxFit.cover,
        ),
      ),
      
    );
  }
}