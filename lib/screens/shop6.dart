import 'package:flutter/material.dart';
import 'package:allthingscharmaine/widgets/bottomNavBar.dart';

class Shop6 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: SafeArea(child:Column(
          children: <Widget>[
            Flexible(
              child:   Column(
                children:[
                  Flexible( child: Row(
                    children:[
                      ImageIcon(AssetImage("assets/hamb menu.png"),color: Colors.black54,),
                      Text("shop",style: TextStyle(color:Colors.black54,fontSize: 20.0),),
                      ImageIcon(AssetImage("assets/notification.png"),color: Colors.black54)
                    ],mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),flex: 1,),
                  // SizedBox(height:30.0),
                  Flexible(
                    child: Align(child:Padding(child:Text("payment",style: TextStyle(fontSize: 30.0,color: Colors.black54,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(left: 40.0),),alignment: Alignment.centerLeft,),flex: 1,),
                  Flexible(
                    child:   SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10.0),
                           Container(
                             decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15.0)),
                             child: Image.asset("assets/apple pay logo.png"),margin: EdgeInsets.only(left: 40.0,right: 30.0,bottom: 30.0),
                             height: 200.0,
                           ),
                            Container(
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15.0)),
                              child: Image.asset("assets/android pay.png"),margin: EdgeInsets.only(left: 40.0,right: 30.0,bottom: 30.0),
                              height: 200.0,
                            )
                          ],crossAxisAlignment: CrossAxisAlignment.start,
                        )
                    ),flex: 9,),
                ],crossAxisAlignment: CrossAxisAlignment.start,),flex: 9,),
            Flexible(child:BottomNavBar(),flex: 1,)
          ],crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),bottom: false
        )
      );

  }


}