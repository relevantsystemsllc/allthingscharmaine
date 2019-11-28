import 'package:flutter/material.dart';

class Shop {
  final String image;
  final String cost;
  final String info;
  final String detail;
  final String description;
  final String category;

  Shop({
    @required this.cost,
    @required this.info,
    @required this.image,
    @required this.category,
    this.description,
    this.detail
  }):assert(cost!=null),assert(info!=null),assert(image!=null);
}