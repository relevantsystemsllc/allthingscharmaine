

import 'package:allthingscharmaine/core/model/shop.dart';

class ShopData {
  List<Shop> items;

  ShopData({this.items});

  getMenuItems() {
    return items = <Shop>[
      Shop(cost: "35", info: "cook eat happy", image: "assets/approns 1.png",detail: "",category: "approns"),
      Shop(cost: "35", info: "disco", image: "assets/approns 2.png",detail: "",category: "approns"),
      Shop(cost: "35", info: "live life", image: "assets/approns 3.png",detail: "",category: "approns"),
      Shop(cost: "35", info: "wakanda", image: "assets/approns 4.png",detail: "",category: "approns"),
    ];
  }

  getBookItems() {
    return items = <Shop>[
      Shop(cost: "24.99", info: "all things charmaine",detail: "print", image: "assets/book 2.png",category: "books"),
      Shop(cost: "21.99", info: "all things charmaine",detail: "ebook", image: "assets/book 2.png",category: "books"),
      Shop(cost: "24.99", info: "all things charmaine",detail: "print", image: "assets/book 2.png",category: "books"),
      Shop(cost: "21.99", info: "all things charmaine",detail: "ebook", image: "assets/book 2.png",category: "books"),
      Shop(cost: "24.99", info: "all things charmaine",detail: "print", image: "assets/book 2.png",category: "books"),
      Shop(cost: "21.99", info: "all things charmaine",detail: "ebook", image: "assets/book 2.png",category: "books"),
      Shop(cost: "24.99", info: "all things charmaine",detail: "print", image: "assets/book 2.png",category: "books"),
      Shop(cost: "21.99", info: "all things charmaine",detail: "ebook", image: "assets/book 2.png",category: "books"),
    ];
  }
}
