
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:allthingscharmaine/core/model/shop.dart';



class ShopData with ChangeNotifier{
  //Color _color;
  //List<Shop> _categories = getMenuItems();


   getMenuItems() {
    return  <Shop>[
      Shop(cost: "35", info: "cook eat happy", image: '${UIData.storage}${UIData.apron1}',description: "cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy",category: "aprons"),
      Shop(cost: "35", info: "disco", image: "${UIData.storage}${UIData.apron2}",description: "cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy",category: "aprons"),
      Shop(cost: "35", info: "live life", image: "${UIData.storage}${UIData.apron3}",description: "cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy",category: "aprons"),
      Shop(cost: "35", info: "wakanda", image: "${UIData.storage}${UIData.apron4}",description: "cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy",category: "aprons"),
    ];
  }

  getBookItems() {
    return  <Shop>[
      Shop(cost: "24.99", info: "all things charmaine",detail: "print", image: "${UIData.storage}${UIData.book2}",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "21.99", info: "all things charmaine",detail: "ebook", image: "${UIData.storage}${UIData.book2}",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "24.99", info: "all things charmaine",detail: "print", image: "${UIData.storage}${UIData.book2}",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "21.99", info: "all things charmaine",detail: "ebook", image: "${UIData.storage}${UIData.book2}",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "24.99", info: "all things charmaine",detail: "print", image: "${UIData.storage}${UIData.book2}",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "21.99", info: "all things charmaine",detail: "ebook", image: "${UIData.storage}${UIData.book2}",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "24.99", info: "all things charmaine",detail: "print", image: "${UIData.storage}${UIData.book2}",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
      Shop(cost: "21.99", info: "all things charmaine",detail: "ebook", image: "${UIData.storage}${UIData.book2}",category: "books",description: "In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version"),
    ];
  }





  List<Shop> getCategories(int val){
    switch(val){
      case 0:
       return getMenuItems();
        break;
      case 1:
       return getBookItems();
        break;
      case 2:
        return getMenuItems();
        break;
      case 3:
      return getBookItems();
        break;
      default:
        return null;
    }

  }


}
