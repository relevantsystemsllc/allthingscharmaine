import 'package:flutter/material.dart';


class ShopCard extends StatelessWidget {
final String image;
final String cost;
final String info;

ShopCard({@required this.cost,@required this.image,@required this.info});


@override
Widget build(BuildContext context) {
  return  Stack(
      children:[Padding(child:Card(color: Colors.white,elevation: 5.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
      padding: EdgeInsets.only(top: 35.0)
  ),Column(
     children:[
       Image.asset(image),
       Text("\$$cost",style: TextStyle(color: Colors.green[200]),),
       SizedBox(height: 5.0),
       Text(info,style: TextStyle(fontSize: 12.0),),
       SizedBox(height: 10.0),
       Row(children:[
         Icon(Icons.enhanced_encryption,color: Colors.green[200],size: 12.0,),
         SizedBox(width: 5.0),
         Text("add to cart",style: TextStyle(color: Colors.green[200],fontSize: 12.0),),
  ],mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.end,),
       SizedBox(height: 10.0),
  ],)
  ],alignment: Alignment.topCenter,fit: StackFit.expand,);
}
}

