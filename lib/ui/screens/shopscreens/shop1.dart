import 'package:allthingscharmaine/utils/sizeConfig.dart';
import 'package:allthingscharmaine/core/model/shop.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/background.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/shopCards.dart';
import 'package:allthingscharmaine/core/services/shopData.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/bottomNavBar.dart';
import 'package:provider/provider.dart';

class Shop1 extends StatefulWidget{

  @override
  Shop1State createState() => Shop1State();
}

class Shop1State extends State<Shop1>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int active = 0;
  Color _color;
  List<Shop> _categories;
  var items;




  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 4, initialIndex: 0);
    _color= UIData.shopColor;
    items = Provider.of<ShopData>(context, listen: false);
    _categories = items.getMenuItems();
  }


  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
        children:[
          Base(topFlex: 3,color: _color),
          SafeArea(child:Column(
            children: <Widget>[
              Row(
                children:[
                  ImageIcon(AssetImage(UIData.hambMenu),color: Colors.white,),
                  Text(UIData.shop,style: TextStyle(color:Colors.white,fontSize: 20.0),),
                  ImageIcon(AssetImage(UIData.notification),color: Colors.white)
        ],mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),
              SizedBox(height:30.0),
              Padding(child:Text(UIData.shopHeader,style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(left: 40.0),),
              SizedBox(height:30.0),
              Padding(child:
              TabBar(tabs: [
              _tabController.index==0?Container(decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20.0)),
                padding: EdgeInsets.only(top: 10.0,bottom: 10.0),width: 120.0,
                child: Text(UIData.apronTab,style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center))
                      :Text(UIData.apronTab,style: TextStyle(color: Colors.white30,fontSize: 15.0),textAlign: TextAlign.center),
                _tabController.index==1?Container(decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20.0)),
                    padding: EdgeInsets.only(top: 10.0,bottom: 10.0),width: 120.0,
                    child: Text(UIData.bookTab,style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center))
                    :Text(UIData.bookTab,style: TextStyle(color: Colors.white30,fontSize: 15.0),textAlign: TextAlign.center),
                _tabController.index==2?Container(decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20.0)),
                    padding: EdgeInsets.only(top: 10.0,bottom: 10.0),width: 120.0,
                    child: Text(UIData.clothingTab,style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center))
                    :Text(UIData.clothingTab,style: TextStyle(color: Colors.white30,fontSize: 15.0),textAlign: TextAlign.center),
                _tabController.index==3?Container(decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20.0)),
                    padding: EdgeInsets.only(top: 10.0,bottom: 10.0),width: 120.0,
                    child: Text(UIData.jewelryTab,style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center))
                    :Text(UIData.jewelryTab,style: TextStyle(color: Colors.white30,fontSize: 15.0),textAlign: TextAlign.center),
              ],controller: _tabController,labelColor: Colors.transparent,indicatorColor: Colors.transparent,isScrollable: true,onTap: (val)=> setState((){
                _color = getColor(val); _categories = items.getCategories(val);
              })),padding: EdgeInsets.only(left: 20.0),),
              SizedBox(height:7.0),
             Expanded(child: GridView.count(
          //primary: false,
          padding: const EdgeInsets.only(left:20,right: 20.0),
          crossAxisSpacing: 0.5,
          mainAxisSpacing: 1,
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          children: _categories.map<Widget>((value)=> GestureDetector(child:ShopCard(item:value,color: _color),onTap:()=> shopItem(_tabController.index,value))).toList()
          ,shrinkWrap: true,
        )),
              SizedBox(height: 50.0)
            ],crossAxisAlignment: CrossAxisAlignment.start,
          ),bottom: true
          ),BottomNavBar(color: _color,)
    ]),backgroundColor: Colors.white,
      );
  }

  void shopItem(int tab, var value){
    switch(tab){
      case 0:
        Navigator.of(context).pushNamed(UIData.shopItemRoute,arguments: value);
        break;
      case 1:
        Navigator.of(context).pushNamed(UIData.shopBookRoute,arguments: value);
        break;
      case 2:
        Navigator.of(context).pushNamed(UIData.shopItemRoute,arguments: value);
        break;
      case 3:
        Navigator.of(context).pushNamed(UIData.shopItemRoute,arguments: value);
        break;
      default:
        return ;
    }

  }

  Color getColor(int val){
    switch(val){
      case 0:
        _color = UIData.shopColor;
        return _color;
        break;
      case 1:
        _color = UIData.bookColor;
        return _color;
        break;
      case 2:
        _color= UIData.clothingColor;
        return _color;
        break;
      case 3:
        _color= UIData.jewelryColor;
        return _color;
        break;
      default:
        return UIData.shopColor;
    }
  }


}