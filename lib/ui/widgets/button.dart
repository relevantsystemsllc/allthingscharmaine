import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String action;


  Button({@required this.color,@required this.action,this.textColor});


  @override
  Widget build(BuildContext context) {
    return   InkWell(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color: color),
        child: Center(child:Text(action,style: TextStyle(color:textColor,fontSize: 15.0),)),width: MediaQuery.of(context).size.width,
        height: 40.0,margin: EdgeInsets.only(left: 30.0,right: 30.0),
      ),
    );
  }
}

