import'package:allthingscharmaine/model/shop.dart';

class ShopData {
  List<Shop> items;

  ShopData({this.items});

  getMenuItems() {
    return items = <Shop>[
      Shop(cost: "35", info: "cook eat happy", image: "assets/approns 1.png"),
      Shop(cost: "35", info: "disco", image: "assets/approns 2.png"),
      Shop(cost: "35", info: "live life", image: "assets/approns 3.png"),
      Shop(cost: "35", info: "wakanda", image: "assets/approns 4.png"),
    ];
  }
}
