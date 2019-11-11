import 'package:flutter/material.dart';


class ShopBottomSheet extends StatelessWidget {
  final Color color;
ShopBottomSheet({@required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(child:Card(elevation: 15.0,color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0),topRight: Radius.circular(35.0))),child:Column(
      children: <Widget>[
        Text("quantity",style: TextStyle(color: Colors.black87,fontSize: 25.0)),
        Row(children:[
           Icon(Icons.remove_circle_outline,color: color,size: 30.0,),
           Text("3",style: TextStyle(color:color,fontSize: 20.0)),
           Icon(Icons.add_circle_outline,color: color,size: 30.0,)
        ],mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        InkWell(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color: color),
            child: Center(child:Text("add to cart",style: TextStyle(color:Colors.white,fontSize: 15.0),)),width: MediaQuery.of(context).size.width,
            height: 50.0,margin: EdgeInsets.only(left: 30.0,right: 30.0),
          ),
        )
      ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    ),borderOnForeground: false,margin: EdgeInsets.only(left: 0.0,right: 0.0,bottom: 0.0),),height: 250.0,);
  }
}

