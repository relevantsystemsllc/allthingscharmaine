import 'package:flutter/material.dart';
import 'package:allthingscharmaine/model/shop.dart';
import 'package:allthingscharmaine/widgets/shopBottomSheet.dart';



class ShopCard extends StatelessWidget {
final Color color;
final Shop item;

ShopCard({@required this.item,@required this.color});


@override
Widget build(BuildContext context) {
  return  Stack(
      children:[Padding(child:Card(color: Colors.white,elevation: 5.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
      padding: EdgeInsets.only(top: 35.0)
  ),Padding(
  child:Column(
     children:[
       Image.asset(item.image),
       Text("\$${item.cost}",style: TextStyle(color: color),),
       SizedBox(height: 5.0),
       Text(item.info,style: TextStyle(fontSize: 12.0),),
       SizedBox(height: 3.0),
       Text(item.detail??"",style: TextStyle(fontSize: 12.0,color: Colors.black54),),
       SizedBox(height: 15.0),
       Row(children:[
         Icon(Icons.enhanced_encryption,color: color,size: 12.0,),
         SizedBox(width: 5.0),
         GestureDetector(child:Text("add to cart",style: TextStyle(color: color,fontSize: 12.0)),onTap:()=>_settingModalBottomSheet(context)),
  ],mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.end,),
  ],),padding: EdgeInsets.only(top: item.category=="books"?25.0:0.0))
  ],alignment: Alignment.topCenter,fit: StackFit.expand,);
}

void _settingModalBottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child:ShopBottomSheet(color: color,item: item,),
          color: Colors.grey,
          padding: EdgeInsets.only(top: 3.0),
        );
      }
  );
}
}

