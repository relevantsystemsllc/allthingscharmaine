
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/widgets/socialView.dart';
import 'package:allthingscharmaine/services/shopData.dart';
import 'package:allthingscharmaine/widgets/bottomNavBar.dart';

class Social3 extends StatefulWidget{

  @override
  Social3State createState() => Social3State();
}

class Social3State extends State<Social3> {
  int active = 0;
  ScrollController sc;
  ShopData items;
  List<double> radian;
  List<Color> color;
  List<Color> colors;



  @override
  void initState() {
    radian = [3.0,3.0,4.0,3.0,3.0];
    color = [Colors.pink[100],Colors.pink[100],Colors.pink[200],Colors.pink[100],Colors.pink[100]];
    colors = [Colors.orangeAccent,Colors.teal,Colors.orangeAccent,Colors.pinkAccent,Colors.lightGreenAccent];
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
        body:
              SafeArea(child:Stack(
                children: [
                  Column(
                        children:[
                      Flexible( child:
                      Padding(
                      child:Row(
                          children:[
                            ImageIcon(AssetImage("assets/hamb menu.png"),color: Colors.black54,),
                            ImageIcon(AssetImage("assets/notification.png"),color: Colors.black54)
                          ],mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),padding: EdgeInsets.only(left: 40.0,right: 30.0)),flex: 1,),
                         // SizedBox(height:30.0),
        Flexible(
          child: Align(child:Padding(child:Text("social",style: TextStyle(fontSize: 30.0,color: Colors.black54,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(left: 40.0),),alignment: Alignment.centerLeft,),flex: 1),
        Flexible(
          child:   SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10.0),
                                Padding(child:Text("facebook >",style: TextStyle(color: Colors.black54,fontSize: 18.0,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(left: 40.0)),
                                SizedBox(height: 300.0,child:
                                ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    SocialviewCard(),
                                    SocialviewCard(),
                                  ],
                                ),
                                ),
                                Center(
                                    child:Container(
                                      height: 20.0,
                                      width: 100.0,
                                      child:ListView(
                                        children: <Widget>[
                                          Padding(child:CircleAvatar(maxRadius: radian[0],backgroundColor: color[0],),padding: EdgeInsets.only(left: 10.0)),
                                          Padding(child:CircleAvatar(maxRadius: radian[1],backgroundColor: color[1],),padding: EdgeInsets.only(left: 10.0)),
                                          Padding(child:CircleAvatar(maxRadius: radian[2],backgroundColor: color[2],),padding: EdgeInsets.only(left: 10.0)),
                                          Padding(child:CircleAvatar(maxRadius: radian[3],backgroundColor: color[3],),padding: EdgeInsets.only(left: 10.0)),
                                          Padding(child:CircleAvatar(maxRadius: radian[4],backgroundColor:color[4],),padding: EdgeInsets.only(left: 10.0)),
                                        ],padding: EdgeInsets.all(3.0),scrollDirection: Axis.horizontal,
                                      ),
                                    )
                                ),
                                SizedBox(height: 30.0),
                                Padding(child:Text("instagram >",style: TextStyle(color: Colors.black54,fontSize: 18.0,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(left: 40.0)),
                                SizedBox(height: 300.0,child:
                                ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    SocialviewCard(),
                                    SocialviewCard(),
                                  ],
                                ),
                                ),
                                Center(
                                    child:Container(
                                      height: 20.0,
                                      width: 100.0,
                                      child:ListView(
                                        children: <Widget>[
                                          Padding(child:CircleAvatar(maxRadius: radian[0],backgroundColor: color[0],),padding: EdgeInsets.only(left: 10.0)),
                                          Padding(child:CircleAvatar(maxRadius: radian[1],backgroundColor: color[1],),padding: EdgeInsets.only(left: 10.0)),
                                          Padding(child:CircleAvatar(maxRadius: radian[2],backgroundColor: color[2],),padding: EdgeInsets.only(left: 10.0)),
                                          Padding(child:CircleAvatar(maxRadius: radian[3],backgroundColor: color[3],),padding: EdgeInsets.only(left: 10.0)),
                                          Padding(child:CircleAvatar(maxRadius: radian[4],backgroundColor:color[4],),padding: EdgeInsets.only(left: 10.0)),
                                        ],padding: EdgeInsets.all(3.0),scrollDirection: Axis.horizontal,
                                      ),
                                    )
                                ),
                              ],crossAxisAlignment: CrossAxisAlignment.start,
                            )
                          ),flex: 8,fit: FlexFit.loose,),
                        ],crossAxisAlignment: CrossAxisAlignment.start),
                  BottomNavBar(),
                ],
              ),bottom: false
              )

      );
  }
}