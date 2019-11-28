
import 'package:allthingscharmaine/core/model/shop.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/bottomNavBar.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/drawer_widget.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/background.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/bookCard.dart';


class Shop7 extends StatelessWidget{
  final Shop book;

  Shop7({this.book}):assert(book!=null);
  static final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        key: _scaffoldKey,
        body: Stack(
            children:[
              Base(color: UIData.bookColor,topFlex: 2),
                 SafeArea(child:
                 Column(
                 children: <Widget>[
                 Flexible(child:Column(
                        children:[
                 Material(child:Padding(child:Row(children:[
                     GestureDetector(child:Icon(Icons.keyboard_backspace,color: Colors.white),onTap: ()=>Navigator.of(context).pop()),
                   Text(UIData.shop,style: TextStyle(color:Colors.white,fontSize: 20.0,fontFamily: 'Poppins')),
                   GestureDetector(child:ImageIcon(AssetImage(UIData.notification),color: Colors.white),onTap: ()=>_scaffoldKey.currentState.openDrawer()),
                 ],mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 ),padding: EdgeInsets.only(right:15.0,left: 15.0,top: 15.0)),elevation: 40.0,color: Colors.transparent,shadowColor: Colors.transparent),
                         Expanded(
                             child:SingleChildScrollView(
                            child:Column(
                         children:[
                         SizedBox(child:Stack(children:[
                           SizedBox(height:20.0),
                           Align(child:Padding(child:Text(UIData.bookTab,style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(left: 40.0)),alignment: Alignment.topLeft),
                           Positioned(child: Image.asset(UIData.bookHeader,height:400.0,fit: BoxFit.cover),top: -30.0,left: -10.0,right: -10.0)]),height: 350.0),
                                SizedBox(height:10.0),
                                Padding(padding: EdgeInsets.only(left: 30.0),child: Text(book.info,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black87))),
                                SizedBox(height:10.0),
                                Padding(padding: EdgeInsets.only(left: 30.0,right: 40.0),child: Text(book.description,style: TextStyle(fontSize: 13.0,color: Colors.black45))),
                               SizedBox(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      BookCard(category: 'eBook',book: book),
                                      BookCard(category: "print",book: book)
                                    ],padding: EdgeInsets.only(left: 40.0,right: 20.0)
                                  ),height: 170.0),
                           SizedBox(height:10.0),
                        ],crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,)))
                       ]),flex: 9,),
                   Flexible(child:BottomNavBar(),flex: 1)]),bottom: false,)
            ]),backgroundColor: Colors.white,
        drawer: Drawer(child: NavigationDrawer()),
      );
  }

}