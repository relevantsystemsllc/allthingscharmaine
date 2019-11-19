import 'package:allthingscharmaine/core/viewmodels/loginviewmodel.dart';
import 'package:allthingscharmaine/ui/screens/shopscreens/shop2.dart';
import 'package:allthingscharmaine/ui/screens/signupscreens/name_reg_screen.dart';
import 'package:allthingscharmaine/ui/screens/tabarscreens/cart_tab_screen.dart';
import 'package:allthingscharmaine/ui/screens/tabarscreens/home_tab_screen.dart';
import 'package:allthingscharmaine/ui/screens/tabarscreens/press_tab_screen.dart';
import 'package:allthingscharmaine/ui/screens/tabarscreens/social_tab_screen.dart';

import 'package:allthingscharmaine/utils/margin_utils.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<LoginViewmodel>(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        // appBar: CustomHomeAppbar(height: 100,),
        body: Stack(children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      HomeTabScreen(),
                      SocialTabScreen(),
                      Shop2(),
                      PressTabScreen(),
                      CartTabScreen(),
                    ],
                  ),
                ),
                Material(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20.0),
                      topRight: const Radius.circular(20.0),
                    ),
                  ),
                  child: Container(
                    height: 60,
                    child: TabBar(
                      tabs: [
                        Tab(icon: SvgPicture.asset("assets/ic-home.svg")),
                        Tab(icon: SvgPicture.asset("assets/chat.svg")),
                        Tab(
                            icon: Container(
                          child: Center(
                              child:
                                  SvgPicture.asset("assets/shopping-bag.svg")),
                          decoration: BoxDecoration(
                              border: Border.all(color: MyColors().pinkActive),
                            shape: BoxShape.circle)
                        )),
                        Tab(
                            icon: SvgPicture.asset(
                                "assets/017-microphone-2.svg")),
                        Tab(icon: SvgPicture.asset("assets/shopping-cart.svg")),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.fromLTRB(30.0, 26.0, 8.0, 8.0),
            children: <Widget>[
              Align(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 26.0, 8.0, 8.0),
                  child: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                alignment: Alignment.topRight,
              ),
              customYMargin(30),
              ListTile(
                title: Text('charmaine tv'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('forum'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Q/A'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('library'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('my account'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('purchases'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('billing information'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('contact us'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              customYMargin(50),
              Align(
                alignment: Alignment.bottomLeft,
                child: ListTile(
                  title: Text('logout'),
                  onTap: () {
                    userProvider.signUserOut();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NameRegScreen()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
