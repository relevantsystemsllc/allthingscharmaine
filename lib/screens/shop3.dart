import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/widgets/button.dart';

class Shop3 extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          body: Container(
              child:Column(
            children: <Widget>[
                  Flexible(child:Column(
               children: <Widget>[
                 Image.asset(UIData.error),
                 SizedBox(height: 10.0),
                 Text(UIData.wrong,style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold)),
                 SizedBox(height: 10.0),
                 Padding(child:Text(UIData.tryCodeAgain,style: TextStyle(fontSize: 15.0,color: Colors.white),textAlign: TextAlign.center),padding: EdgeInsets.only(left:40.0,right: 30.0))
               ],crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
             ) ,flex: 3,),
    Flexible(child:Button(color: Colors.white, action: UIData.back,textColor: Colors.deepOrange[200],),flex: 2),
            ],mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
            color: Colors.deepOrange[200],
          )

      );

  }

}