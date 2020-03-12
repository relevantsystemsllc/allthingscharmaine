import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/material.dart';

class Shop {
  final String image;
  final String cost;
  final String info;
  final String detail;
  final String description;
  final String colors;
  final String documentRef;

  Shop({
    @required this.cost,
    @required this.info,
    @required this.image,
    this.description,
    this.detail,
    this.colors,
    this.documentRef
  }):assert(cost!=null),assert(info!=null),assert(image!=null);

  Shop.fromMap(Map<dynamic, dynamic> map, {this.documentRef})
      : image = '${UIData.storage}${map["imageUrl"]}',
        cost = map["price"].toString(),
        info = map["information"],
        detail = map["detail"],
        description= map["description"],
        colors= map["colors"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["imageUrl"] = image;
    data["price"] = cost;
    data["information"] = info;
    data["detail"] = detail;
    data["description"] = description;
    data["colors"] = colors;

    return data;
  }


}