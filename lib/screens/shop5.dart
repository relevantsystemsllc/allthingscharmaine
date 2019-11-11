import 'package:flutter/material.dart';
import 'package:allthingscharmaine/widgets/button.dart';
import 'package:allthingscharmaine/widgets/background.dart';

class Shop5 extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          body: Stack(
         children:[ 
           Base(topFlex: 7),
        Column(
              children: <Widget>[
                Flexible(child:Column(
                  children: <Widget>[
                    Image.asset("assets/ICON 3.png"),
                    SizedBox(height: 10.0),
                    Text("Added to cart",style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold)),
                    SizedBox(height: 10.0),
                    Padding(child:Text("Your product has already been added",style: TextStyle(fontSize: 15.0,color: Colors.white),textAlign: TextAlign.center),padding: EdgeInsets.only(left:40.0,right: 30.0))
                  ],crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                ) ,flex: 3,),
                Flexible(child:Button(color: Colors.green[200], action: "back",textColor: Colors.white,),flex: 2),
              ],mainAxisAlignment: MainAxisAlignment.spaceAround,
          )
    ]
          )

      );

  }

}