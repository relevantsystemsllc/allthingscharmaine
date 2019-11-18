import 'package:allthingscharmaine/core/services/shopData.dart';
import 'package:allthingscharmaine/ui/widgets/background.dart';
import 'package:allthingscharmaine/ui/widgets/bottomNavBar.dart';

import 'package:flutter/material.dart';

class Shop2 extends StatefulWidget {
  @override
  Shop2State createState() => Shop2State();
}

class Shop2State extends State<Shop2> {
  int active = 0;
  ScrollController sc;
  ShopData items;
  List<double> radian;
  List<Color> color;
  List<Color> colors;

  @override
  void initState() {
    radian = [3.0, 3.0, 4.0, 3.0, 3.0];
    color = [
      Colors.green[100],
      Colors.green[100],
      Colors.green[200],
      Colors.green[100],
      Colors.green[100]
    ];
    colors = [
      Colors.orangeAccent,
      Colors.teal,
      Colors.orangeAccent,
      Colors.pinkAccent,
      Colors.lightGreenAccent
    ];
    super.initState();
    sc = new ScrollController(initialScrollOffset: 40.0);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      sc.animateTo(85.0,
          duration: Duration(milliseconds: 500), curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Base(topFlex: 2),
        SafeArea(
            child: Column(
              children: <Widget>[
                Flexible(
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.keyboard_backspace,
                            color: Colors.white,
                          ),
                          Text(
                            "shop",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          ImageIcon(AssetImage("assets/notification.png"),
                              color: Colors.white)
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),
                      SizedBox(height: 30.0),
                      Align(
                        child: Padding(
                          child: Text(
                            "approns",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.only(left: 40.0),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      SingleChildScrollView(
                        child: Row(
                          children: <Widget>[
                            Image.asset("assets/approns 1.png",
                                fit: BoxFit.fitHeight, height: 200.0),
                            Image.asset("assets/approns 2.png",
                                fit: BoxFit.fitHeight, height: 350.0),
                            Image.asset("assets/approns 3.png",
                                fit: BoxFit.fitHeight, height: 200.0),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        scrollDirection: Axis.horizontal,
                        controller: sc,
                        primary: false,
                      ),
                      Center(
                          child: Container(
                        height: 20.0,
                        width: 100.0,
                        child: ListView(
                          children: <Widget>[
                            Padding(
                                child: CircleAvatar(
                                  maxRadius: radian[0],
                                  backgroundColor: color[0],
                                ),
                                padding: EdgeInsets.only(left: 10.0)),
                            Padding(
                                child: CircleAvatar(
                                  maxRadius: radian[1],
                                  backgroundColor: color[1],
                                ),
                                padding: EdgeInsets.only(left: 10.0)),
                            Padding(
                                child: CircleAvatar(
                                  maxRadius: radian[2],
                                  backgroundColor: color[2],
                                ),
                                padding: EdgeInsets.only(left: 10.0)),
                            Padding(
                                child: CircleAvatar(
                                  maxRadius: radian[3],
                                  backgroundColor: color[3],
                                ),
                                padding: EdgeInsets.only(left: 10.0)),
                            Padding(
                                child: CircleAvatar(
                                  maxRadius: radian[4],
                                  backgroundColor: color[4],
                                ),
                                padding: EdgeInsets.only(left: 10.0)),
                          ],
                          padding: EdgeInsets.all(3.0),
                          scrollDirection: Axis.horizontal,
                        ),
                      )),
                      SizedBox(height: 20.0),
                      Padding(
                          padding: EdgeInsets.only(left: 30.0),
                          child: Text("\$35",
                              style: TextStyle(
                                  color: Colors.green[200],
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold))),
                      Padding(
                          padding: EdgeInsets.only(left: 30.0),
                          child: Text("cook eat happy",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal))),
                      Padding(
                          padding: EdgeInsets.only(left: 30.0, right: 50.0),
                          child: Text(
                              "cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy cook eat happy",
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.normal))),
                      SizedBox(height: 20.0),
                      Container(
                        height: 20.0,
                        width: 300.0,
                        child: ListView(
                          children: <Widget>[
                            Padding(
                                child: CircleAvatar(
                                  maxRadius: 10.0,
                                  backgroundColor: colors[0],
                                ),
                                padding: EdgeInsets.only(left: 30.0)),
                            Padding(
                                child: CircleAvatar(
                                  maxRadius: 10.0,
                                  backgroundColor: colors[1],
                                ),
                                padding: EdgeInsets.only(left: 10.0)),
                            Padding(
                                child: CircleAvatar(
                                  maxRadius: 10.0,
                                  backgroundColor: colors[2],
                                ),
                                padding: EdgeInsets.only(left: 10.0)),
                            Padding(
                                child: CircleAvatar(
                                  maxRadius: 10.0,
                                  backgroundColor: colors[3],
                                ),
                                padding: EdgeInsets.only(left: 10.0)),
                            Padding(
                                child: CircleAvatar(
                                  maxRadius: 10.0,
                                  backgroundColor: colors[4],
                                ),
                                padding: EdgeInsets.only(left: 10.0)),
                          ],
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.green[200]),
                          child: Center(
                              child: Text(
                            "add to cart",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          )),
                          width: MediaQuery.of(context).size.width,
                          height: 40.0,
                          margin: EdgeInsets.only(left: 30.0, right: 30.0),
                        ),
                      )
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  )),
                  flex: 9,
                ),
                Flexible(
                  child: BottomNavBar(),
                  flex: 1,
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            bottom: false)
      ]),
      backgroundColor: Colors.white,
    );

// children: <Widget>[AppBar(leading: Icon(Icons.keyboard_backspace,color: Colors.white),backgroundColor: Colors.transparent,)],
/*


 */
  }

  // void _settingModalBottomSheet(context) {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return Container(
  //           child: ShopBottomSheet(color: Colors.amber,),
  //           color: Colors.grey,
  //           padding: EdgeInsets.only(top: 3.0),
  //         );
  //       });
  // }
}
