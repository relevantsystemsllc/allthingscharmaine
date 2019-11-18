import 'package:flutter/material.dart';


class ShopCard extends StatelessWidget {
final String image;
final String cost;
final String info;
final String detail;
final String category;
final Color color;

ShopCard({@required this.cost,@required this.image,@required this.info,this.detail,@required this.category,@required this.color});


@override
Widget build(BuildContext context) {
  return  Stack(
      children:[Padding(child:Card(color: Colors.white,elevation: 5.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
      padding: EdgeInsets.only(top: 35.0)
  ),Padding(
  child:Column(
     children:[
       Image.asset(image),
       Text("\$$cost",style: TextStyle(color: color),),
       SizedBox(height: 5.0),
       Text(info,style: TextStyle(fontSize: 12.0),),
       SizedBox(height: 3.0),
       Text(detail??"",style: TextStyle(fontSize: 12.0,color: Colors.black54),),
       SizedBox(height: 15.0),
       Row(children:[
         Icon(Icons.enhanced_encryption,color: color,size: 12.0,),
         SizedBox(width: 5.0),
         Text("add to cart",style: TextStyle(color: color,fontSize: 12.0),),
  ],mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.end,),
  ],),padding: EdgeInsets.only(top: category=="books"?25.0:0.0))
  ],alignment: Alignment.topCenter,fit: StackFit.expand,);
}
}

