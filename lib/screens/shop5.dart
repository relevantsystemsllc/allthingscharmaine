import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/widgets/button.dart';
import 'package:allthingscharmaine/widgets/background.dart';

class Shop5 extends StatelessWidget{
final Color color;

Shop5({this.color});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          body: Stack(
         children:[ 
           Base(topFlex: 7,color: color),
        Column(
              children: <Widget>[
                Flexible(child:Column(
                  children: <Widget>[
                    Image.asset(UIData.cartIcon),
                    SizedBox(height: 10.0),
                    Text(UIData.addedToCart,style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold)),
                    SizedBox(height: 10.0),
                    Padding(child:Text(UIData.productAddedToCart,style: TextStyle(fontSize: 15.0,color: Colors.white),textAlign: TextAlign.center),padding: EdgeInsets.only(left:40.0,right: 30.0))
                  ],crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                ) ,flex: 3,),
                Flexible(child:GestureDetector(child:Button(color: color??Colors.green[200], action: UIData.back,textColor: Colors.white),onTap:()=> Navigator.pop(context)),flex: 2),
              ],mainAxisAlignment: MainAxisAlignment.spaceAround,
          )
    ]
          )

      );

  }

}