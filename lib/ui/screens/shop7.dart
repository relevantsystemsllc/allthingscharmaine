
import 'package:allthingscharmaine/core/services/shopData.dart';
import 'package:allthingscharmaine/ui/widgets/background.dart';

import 'package:allthingscharmaine/ui/widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';


class Shop7 extends StatefulWidget{

  @override
  Shop7State createState() => Shop7State();
}

class Shop7State extends State<Shop7> {
  ShopData items;



  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Stack(
            children:[
              Base(color: Colors.deepOrange[200],topFlex: 2),
              SafeArea(child: Column(
                        children:[Row(
                          children:[
                            Icon(Icons.keyboard_backspace,color: Colors.white),
                            Text("shop",style: TextStyle(color:Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),
                            ImageIcon(AssetImage("assets/notification.png"),color: Colors.white)
                          ],mainAxisAlignment: MainAxisAlignment.spaceAround,
                        ),
                          SizedBox(height:30.0),
                         SizedBox(child:Stack(children:[
                           Align(child:Padding(child:Text("books",style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(left: 40.0)),alignment: Alignment.topLeft),
                           Positioned(child: Image.asset("assets/book.png",height:400.0,fit: BoxFit.cover),top: -30.0,left: -10.0,right: -10.0)]),height: 350.0),
                          SingleChildScrollView(
                            child:Column(
                              children: <Widget>[
                                SizedBox(height:10.0),
                                Padding(padding: EdgeInsets.only(left: 30.0),child: Text("all things charmaine",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black87))),
                                SizedBox(height:10.0),
                                Padding(padding: EdgeInsets.only(left: 30.0,right: 40.0),child: Text("In this book you can see the best recipes for holiday cooking. We have the printed version or the digital version",style: TextStyle(fontSize: 13.0,color: Colors.black45))),
                               SizedBox(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      // BookCard(),
                                      // BookCard(category: "print",)
                                    ],shrinkWrap: true,padding: EdgeInsets.only(left: 40.0)
                                  ),height: 170.0,
                                )
                              ],mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                            ) ,
                          ),
                        ],crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,),bottom: false),
              BottomNavBar()
            ]),backgroundColor: Colors.white,
      );
  }

}