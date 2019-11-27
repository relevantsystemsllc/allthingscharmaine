
import 'package:allthingscharmaine/model/shop.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/widgets/background.dart';
import 'package:allthingscharmaine/widgets/bottomNavBar.dart';
import 'package:allthingscharmaine/widgets/bookCard.dart';

class Shop7 extends StatefulWidget{
  final Shop book;

  Shop7({@required this.book}):assert(book!=null);

  @override
  Shop7State createState() => Shop7State();
}

class Shop7State extends State<Shop7> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Stack(
            children:[
              Base(color: UIData.bookColor,topFlex: 2),
              SafeArea(child: Column(
                        children:[Row(
                          children:[
                            GestureDetector(child:Icon(Icons.keyboard_backspace,color: Colors.white),onTap: ()=>Navigator.of(context).pop()),
                            Text(UIData.shop,style: TextStyle(color:Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),
                            ImageIcon(AssetImage(UIData.notification),color: Colors.white)
                          ],mainAxisAlignment: MainAxisAlignment.spaceAround,
                        ),
                          SizedBox(height:30.0),
                         SizedBox(child:Stack(children:[
                           Align(child:Padding(child:Text(UIData.bookTab,style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(left: 40.0)),alignment: Alignment.topLeft),
                           Positioned(child: Image.asset(UIData.bookHeader,height:400.0,fit: BoxFit.cover),top: -30.0,left: -10.0,right: -10.0)]),height: 350.0),
                          SingleChildScrollView(
                            child:Column(
                              children: <Widget>[
                                SizedBox(height:10.0),
                                Padding(padding: EdgeInsets.only(left: 30.0),child: Text(widget.book.info,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black87))),
                                SizedBox(height:10.0),
                                Padding(padding: EdgeInsets.only(left: 30.0,right: 40.0),child: Text(widget.book.description,style: TextStyle(fontSize: 13.0,color: Colors.black45))),
                               SizedBox(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      BookCard(category: 'eBook',book: widget.book),
                                      BookCard(category: "print",book: widget.book)
                                    ],shrinkWrap: true,padding: EdgeInsets.only(left: 40.0)
                                  ),height: 170.0,
                                )
                              ],mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                            ) ,
                          ),
                        ],crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start),bottom: false),
              BottomNavBar()
            ]),backgroundColor: Colors.white,
      );
  }

}