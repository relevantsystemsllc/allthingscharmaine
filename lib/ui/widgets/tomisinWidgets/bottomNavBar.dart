import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';


class BottomNavBar extends StatelessWidget {
  final color;
  BottomNavBar({this.color});

  @override
  Widget build(BuildContext context) {
    return Align(child:SizedBox(child:Card(elevation: 5.0,color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0))),child:Row(
    children: <Widget>[
    GestureDetector(child:SvgPicture.asset("assets/ic-home.svg"),onTap: ()=> Navigator.of(context).pushNamedAndRemoveUntil(UIData.homeRoute,(Route<dynamic> route)=> false,arguments: 0)),
      GestureDetector(child: SvgPicture.asset("assets/chat.svg"),onTap: ()=> Navigator.of(context).pushNamedAndRemoveUntil(UIData.homeRoute,(Route<dynamic> route)=> false,arguments: 1)),
      GestureDetector(child:Column(children:[
      Container(child:SvgPicture.asset("assets/shopping-bag.svg"),decoration: BoxDecoration(border: Border.all(color: color??Colors.pink[200]),shape: BoxShape.circle),padding: EdgeInsets.all(10.0),),
      SizedBox(height: 8.0),
      Container(color: color??Colors.pink[200],height: 3.0,width: 60.0,)
    ],mainAxisAlignment: MainAxisAlignment.center,),onTap: ()=> Navigator.of(context).pushNamedAndRemoveUntil(UIData.homeRoute,(Route<dynamic> route)=> false,arguments: 2)),
      GestureDetector(child:SvgPicture.asset("assets/017-microphone-2.svg",),onTap: ()=> Navigator.of(context).pushNamedAndRemoveUntil(UIData.homeRoute,(Route<dynamic> route)=> false,arguments: 3)),
      GestureDetector(child:SvgPicture.asset("assets/shopping-cart.svg"),onTap: ()=> Navigator.of(context).pushNamedAndRemoveUntil(UIData.homeRoute,(Route<dynamic> route)=> false,arguments: 4)),
    ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    ),borderOnForeground: false,margin: EdgeInsets.only(left: 0.0,right: 0.0,bottom: 0.0),),height: 80.0),alignment: Alignment.bottomCenter);
  }
}

