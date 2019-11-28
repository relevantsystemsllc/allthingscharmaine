import 'package:allthingscharmaine/ui/widgets/tourewidgets/drawer_widget.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/bottomNavBar.dart';

class Shop6 extends StatelessWidget{
  static final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        key: _scaffoldKey,
        body: SafeArea(child:Column(
          children: <Widget>[
            Flexible(
              child:   Column(
                children:[
                  Flexible( child:
                  Padding(
                      child:Row(
                        children:[
                          GestureDetector(child:Icon(Icons.keyboard_backspace,color: Colors.black87),onTap: ()=>Navigator.of(context).pop()),
                          Text(UIData.shop,style: TextStyle(color:Colors.black54,fontSize: 20.0,fontWeight: FontWeight.bold)),
                          GestureDetector(child:ImageIcon(AssetImage(UIData.notification),color: Colors.black87),onTap: ()=>_scaffoldKey.currentState.openDrawer()),
                        ],mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),padding: EdgeInsets.only(right:15.0,left: 15.0,top: 15.0)),flex: 1),
                  // SizedBox(height:30.0),
                  Flexible(
                    child: Align(child:Padding(child:Text(UIData.paymentHeader,style: TextStyle(fontSize: 30.0,color: Colors.black54,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(left: 40.0,top: 15.0),),alignment: Alignment.centerLeft),flex: 1),
                  Flexible(
                    child:   SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20.0),
                          GestureDetector(
                            child:Container(
                             decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15.0)),
                             child: Image.asset(UIData.applePay),margin: EdgeInsets.only(left: 40.0,right: 30.0,bottom: 30.0),
                             height: 200.0,
                           ),onTap: ()=> Navigator.pushNamed(context, UIData.addedToLibraryRoute),
                          ),
                      GestureDetector(
                          child: Container(
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15.0)),
                              child: Image.asset(UIData.androidPay),margin: EdgeInsets.only(left: 40.0,right: 30.0,bottom: 30.0),
                              height: 200.0,
                            ),onTap: ()=> Navigator.pushNamed(context, UIData.addedToLibraryRoute))
                          ],crossAxisAlignment: CrossAxisAlignment.start,
                        )
                    ),flex: 9,),
                ],crossAxisAlignment: CrossAxisAlignment.start,),flex: 9,),
            Flexible(child:BottomNavBar(),flex: 1,)
          ],crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),bottom: false
        ),
        drawer: Drawer(child: NavigationDrawer()),
      );

  }


}