import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Align(child:SizedBox(child:Card(elevation: 5.0,color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0))),child:Row(
    children: <Widget>[
    ImageIcon(AssetImage("assets/ic-home.png"),color: Colors.grey),
    ImageIcon(AssetImage("assets/chat.png"),color:Colors.grey),
    Column(children:[
      Container(child:ImageIcon(AssetImage("assets/shopping-bag.png"),color: Colors.pink[300]),decoration: BoxDecoration(border: Border.all(color: Colors.pink[200]),shape: BoxShape.circle),padding: EdgeInsets.all(5.0),),
      SizedBox(height: 8.0),
      Container(color: Colors.pink[200],height: 5.0,width: 60.0,)
    ],mainAxisAlignment: MainAxisAlignment.center,),
    ImageIcon(AssetImage("assets/017-microphone-2.png"),color: Colors.grey),
    ImageIcon(AssetImage("assets/shopping-cart.png"),color: Colors.grey)
    ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    ),borderOnForeground: false,margin: EdgeInsets.only(left: 0.0,right: 0.0,bottom: 0.0),),height: 80.0),alignment: Alignment.bottomCenter);
  }
}

