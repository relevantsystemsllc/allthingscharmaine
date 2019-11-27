import 'package:allthingscharmaine/utils/sizeConfig.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/widgets/background.dart';
import 'package:allthingscharmaine/widgets/shopCards.dart';
import 'package:allthingscharmaine/services/shopData.dart';
import 'package:allthingscharmaine/widgets/bottomNavBar.dart';
import 'package:provider/provider.dart';

class Shop1 extends StatefulWidget{

  @override
  Shop1State createState() => Shop1State();
}

class Shop1State extends State<Shop1>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int active = 0;
  Color color;
  var items;




  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: 4, initialIndex: 0);
    color= UIData.shopColor;
    items = Provider.of<ShopData>(context, listen: false);
  }


  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
          body: Stack(
        children:[
          Base(topFlex: 3,color: color),
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
              tabController.index==0?Container(decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20.0)),
                padding: EdgeInsets.only(top: 10.0,bottom: 10.0),width: 120.0,
                child: Text(UIData.apronTab,style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center))
                      :Text(UIData.apronTab,style: TextStyle(color: Colors.white30,fontSize: 15.0),textAlign: TextAlign.center),
                tabController.index==1?Container(decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20.0)),
                    padding: EdgeInsets.only(top: 10.0,bottom: 10.0),width: 120.0,
                    child: Text(UIData.bookTab,style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center))
                    :Text(UIData.bookTab,style: TextStyle(color: Colors.white30,fontSize: 15.0),textAlign: TextAlign.center),
                tabController.index==2?Container(decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20.0)),
                    padding: EdgeInsets.only(top: 10.0,bottom: 10.0),width: 120.0,
                    child: Text(UIData.clothingTab,style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center))
                    :Text(UIData.clothingTab,style: TextStyle(color: Colors.white30,fontSize: 15.0),textAlign: TextAlign.center),
                tabController.index==3?Container(decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20.0)),
                    padding: EdgeInsets.only(top: 10.0,bottom: 10.0),width: 120.0,
                    child: Text(UIData.jewelryTab,style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center))
                    :Text(UIData.jewelryTab,style: TextStyle(color: Colors.white30,fontSize: 15.0),textAlign: TextAlign.center),
              ],controller: tabController,labelColor: Colors.transparent,indicatorColor: Colors.transparent,isScrollable: true,onTap: (val)=> setState((){
                color = items.getColor(val);
              })),padding: EdgeInsets.only(left: 20.0),),
              SizedBox(height:7.0),
             Expanded(child: GridView.count(
          //primary: false,
          padding: const EdgeInsets.only(left:20,right: 20.0),
          crossAxisSpacing: 0.5,
          mainAxisSpacing: 1,
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          children: items.getCategory().map<Widget>((value)=> GestureDetector(child:ShopCard(item:value,color: color),onTap:()=> shopItem(tabController.index,value))).toList()
          ,shrinkWrap: true,
        )),
              SizedBox(height: 50.0)
            ],crossAxisAlignment: CrossAxisAlignment.start,
          ),bottom: true
          ),BottomNavBar(color: color,)
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


}