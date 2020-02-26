
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:allthingscharmaine/core/model/shop.dart';
import 'package:allthingscharmaine/core/services/API.dart';
import 'package:allthingscharmaine/locator.dart';



class ShopVM with ChangeNotifier{

  Api _api = locator<Api>();
  List<Shop> _clothing;
  List<Shop> _aprons;
  List<Shop> _books;
  List<Shop> _jewelries;
  List<List<Shop>>  _shop=[];



  Future<List<Shop>> fetchClothing() async {
    var result = await _api.getDataCollection("/shop/zAQy1rU5BkrvBBxyoRc3/categoryItem");
    _clothing = result.documents
        .map((doc) => Shop.fromMap(doc.data, documentRef:  doc.documentID))
        .toList();//_shop.insert(2,_clothing); //print(_clothing);
    return _clothing;
  }

  Future<List<Shop>> fetchAprons() async {
    var result = await _api.getDataCollection("/shop/aTN3OePsMrly8h47QYqO/categoryItem");
    _aprons = result.documents
        .map((doc) => Shop.fromMap(doc.data, documentRef:  doc.documentID))
        .toList(); //_shop.insert(0,_aprons); //print(_aprons);print("a");
    return _aprons;
  }

  Future<List<Shop>> fetchBooks() async {
    var result = await _api.getDataCollection("/shop/gyUQ3v31Sn3dUBbpLU84/categoryItem");
    _books = result.documents
        .map((doc) => Shop.fromMap(doc.data, documentRef:  doc.documentID))
        .toList();//_shop.insert(1,_books); //print(_books); print("b");
    return _books;
  }

  Future<List<Shop>> fetchJewelries() async {
    var result = await _api.getDataCollection("/shop/MVmLy2Q5G8MmCL0Gmtx1/categoryItem");
    _jewelries = result.documents
        .map((doc) => Shop.fromMap(doc.data, documentRef:  doc.documentID))
        .toList();//_shop.insert(3,_jewelries); //print(_jewelries);
    return _jewelries;
  }

  Future<List<List<Shop>>> shopItems() async{
    _shop.insert(0, await fetchAprons());
    _shop.insert(1, await fetchBooks());
    _shop.insert(2, await fetchClothing());
    _shop.insert(3, await fetchJewelries());
    return _shop;
  }


  List<Shop> getCategories(int val){
    switch(val){
      case 0:
       return _shop[val];
        break;
      case 1:
       return _shop[val];
        break;
      case 2:
        return _shop[val];
        break;
      case 3:
      return _shop[val];
        break;
      default:
        return null;
    }

  }


}
