import 'package:flutter/material.dart';
import'package:allthingscharmaine/model/shop.dart';
import 'package:allthingscharmaine/utils/uiData.dart';


class ShopData with ChangeNotifier{
  //Color _color;
  List<Shop> _categories = getMenuItems();


  static getMenuItems() {
    return  <Shop>[
      Shop(cost: "35", info: "cook eat happy", image: "assets/approns 1.png",description: "cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy",category: "aprons"),
      Shop(cost: "35", info: "disco", image: "assets/approns 2.png",description: "cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy",category: "aprons"),
      Shop(cost: "35", info: "live life", image: "assets/approns 3.png",description: "cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy",category: "aprons"),
      Shop(cost: "35", info: "wakanda", image: "assets/approns 4.png",description: "cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy",category: "aprons"),
    ];
  }

  getBookItems() {
    return  <Shop>[
      Shop(cost: "24.99", info: "all things charmaine",detail: "print", image: "assets/book 2.png",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "21.99", info: "all things charmaine",detail: "ebook", image: "assets/book 2.png",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "24.99", info: "all things charmaine",detail: "print", image: "assets/book 2.png",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "21.99", info: "all things charmaine",detail: "ebook", image: "assets/book 2.png",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "24.99", info: "all things charmaine",detail: "print", image: "assets/book 2.png",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "21.99", info: "all things charmaine",detail: "ebook", image: "assets/book 2.png",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "24.99", info: "all things charmaine",detail: "print", image: "assets/book 2.png",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "21.99", info: "all things charmaine",detail: "ebook", image: "assets/book 2.png",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
    ];
  }

  Color getColor(int val){
    switch(val){
      case 0:
        _categories = getMenuItems();
        return UIData.shopColor;
        break;
      case 1:
        _categories = getBookItems();
        return UIData.bookColor;
        break;
      case 2:
        _categories = getMenuItems();
        return UIData.clothingColor;
        break;
      case 3:
        _categories = getBookItems();
        return UIData.jewelryColor;
        break;
      default:
        return UIData.shopColor;
    }

  }

  List<Shop> getCategory(){
    return _categories;
  }

}
