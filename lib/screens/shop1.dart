import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/widgets/background.dart';
import 'package:allthingscharmaine/widgets/shopCards.dart';
import 'package:allthingscharmaine/services/shopData.dart';
import 'package:allthingscharmaine/widgets/bottomNavBar.dart';
import 'package:allthingscharmaine/model/shop.dart';
import 'package:allthingscharmaine/widgets/shopBottomSheet.dart';

class Shop1 extends StatefulWidget{

  @override
  Shop1State createState() => Shop1State();
}

class Shop1State extends State<Shop1>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int active = 0;
  ShopData items;
  Color color;
  List<Shop> categories;



  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: 4, initialIndex: 0)
      ..addListener(() {
        setState(() {
          active = tabController.index;
        });
      });
    items = ShopData();
    categories = items.getMenuItems();
    color= Colors.green[200];
  }


  Color getColor(int val){
    switch(val){
      case 0:
        categories = items.getMenuItems();
        return Colors.green[200];
        break;
      case 1:
        categories = items.getBookItems();
        return Colors.deepOrange[200];
        break;
      case 2:
        categories = items.getMenuItems();
        return Colors.pink[200];
        break;
      case 3:
        categories = items.getBookItems();
        return Colors.blue[200];
        break;
      default:
        return Colors.green[200];
    }

  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          body: Stack(
        children:[
          Base(topFlex: 3,color: color),
          SafeArea(child:Column(
            children: <Widget>[
              Row(
                children:[
                  ImageIcon(AssetImage("assets/hamb menu.png"),color: Colors.white,),
                  Text("shop",style: TextStyle(color:Colors.white,fontSize: 20.0),),
                  ImageIcon(AssetImage("assets/notification.png"),color: Colors.white)
        ],mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),
              SizedBox(height:30.0),
              Padding(child:Text("Categories",style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(left: 40.0),),
              SizedBox(height:30.0),
              Padding(child:
              TabBar(tabs: [
              tabController.index==0?Container(decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20.0)),
                padding: EdgeInsets.only(top: 10.0,bottom: 10.0),width: 120.0,
                child: Text("approns",style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center))
                      :Text("approns",style: TextStyle(color: Colors.white30,fontSize: 15.0),textAlign: TextAlign.center),
                tabController.index==1?Container(decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20.0)),
                    padding: EdgeInsets.only(top: 10.0,bottom: 10.0),width: 120.0,
                    child: Text("books",style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center))
                    :Text("books",style: TextStyle(color: Colors.white30,fontSize: 15.0),textAlign: TextAlign.center),
                tabController.index==2?Container(decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20.0)),
                    padding: EdgeInsets.only(top: 10.0,bottom: 10.0),width: 120.0,
                    child: Text("clothings",style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center))
                    :Text("clothings",style: TextStyle(color: Colors.white30,fontSize: 15.0),textAlign: TextAlign.center),
                tabController.index==3?Container(decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20.0)),
                    padding: EdgeInsets.only(top: 10.0,bottom: 10.0),width: 120.0,
                    child: Text("Jewelries",style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center))
                    :Text("Jewelries",style: TextStyle(color: Colors.white30,fontSize: 15.0),textAlign: TextAlign.center),
              ],controller: tabController,labelColor: Colors.transparent,indicatorColor: Colors.transparent,isScrollable: true,onTap: (val)=> setState((){
                color = getColor(val);
              })),padding: EdgeInsets.only(left: 20.0),),
              SizedBox(height:7.0),
             Expanded(child:GridView.count(
                  //primary: false,
                  padding: const EdgeInsets.only(left:20,right: 20.0),
                  crossAxisSpacing: 0.5,
                  mainAxisSpacing: 1,
                  crossAxisCount: 2,
                  childAspectRatio: 0.65,
                  children: categories.map<Widget>((value)=> GestureDetector(child:ShopCard(cost: value.cost, image: value.image, info: value.info,detail:value.detail,category: value.category,color: color),onTap:()=>_settingModalBottomSheet(context))).toList()
                ,shrinkWrap: true,
              ),
             ),
              SizedBox(height: 50.0)
            ],crossAxisAlignment: CrossAxisAlignment.start,
          ),bottom: true
          ),BottomNavBar()
    ]),backgroundColor: Colors.white,
      );
  }
  void _settingModalBottomSheet(context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              child:ShopBottomSheet(color: color,),
            color: Colors.grey,
            padding: EdgeInsets.only(top: 3.0),
            );
        }
    );
  }

}