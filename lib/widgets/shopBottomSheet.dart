import 'package:allthingscharmaine/model/shop.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/material.dart';


class ShopBottomSheet extends StatefulWidget {
  final Color color;
  final Shop item;
  ShopBottomSheet({@required this.color,@required this.item});


  @override
  _ShopBottomSheetState createState() => _ShopBottomSheetState();
}

class _ShopBottomSheetState extends State<ShopBottomSheet> {

  int quantity=3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(child:Card(elevation: 15.0,color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0),topRight: Radius.circular(35.0))),child:Column(
      children: <Widget>[
        Text("quantity",style: TextStyle(color: Colors.black87,fontSize: 25.0)),
        Row(children:[
           GestureDetector(child:Icon(Icons.remove_circle_outline,color: widget.color,size: 30.0,),
             onTap: ()=> quantity>0? setState((){quantity--;}):quantity=0),
           Text(quantity.toString(),style: TextStyle(color:widget.color,fontSize: 20.0)),
          GestureDetector(child:Icon(Icons.add_circle_outline,color: widget.color,size: 30.0), onTap: ()=> setState((){quantity++;}))
        ],mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        InkWell(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color: widget.color),
            child: Center(child:Text("add to cart",style: TextStyle(color:Colors.white,fontSize: 15.0),)),width: MediaQuery.of(context).size.width,
            height: 50.0,margin: EdgeInsets.only(left: 30.0,right: 30.0),
          ),onTap: ()=> Navigator.pushNamed(context, UIData.addedToCartRoute,arguments: widget.color),
        )
      ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    ),borderOnForeground: false,margin: EdgeInsets.only(left: 0.0,right: 0.0,bottom: 0.0),),height: 250.0,);
  }


}

