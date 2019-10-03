import 'package:flutter/material.dart';

class Shop {
  final String image;
  final String cost;
  final String info;

  Shop({
    @required this.cost,
    @required this.info,
    @required this.image,
  }):assert(cost!=null),assert(info!=null),assert(image!=null);
}