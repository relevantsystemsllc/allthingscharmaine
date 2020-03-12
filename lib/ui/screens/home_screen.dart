import 'package:allthingscharmaine/core/viewmodels/loginviewmodel.dart';
import 'package:allthingscharmaine/ui/screens/tabarscreens/cart_tab_screen.dart';
import 'package:allthingscharmaine/ui/screens/tabarscreens/home_tab_screen.dart';
import 'package:allthingscharmaine/ui/screens/tabarscreens/press_tab_screen.dart';
import 'package:allthingscharmaine/ui/screens/tabarscreens/social_tab_screen.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/drawer_widget.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:allthingscharmaine/utils/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'otherscreens/notificationscreen.dart';
import 'tabarscreens/shop_tab_screen.dart';

class HomeScreen extends StatefulWidget {
  final int index;

  HomeScreen({this.index = 0});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController _tabController;
  AppBarColor _appBarColor;
  initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
    _tabController.addListener(_select);
    _appBarColor = appBarColors[0];
    _tabController.index = widget.index;
    _appBarColor = appBarColors[widget.index];
  }

  void _select() {
    setState(() {
      _appBarColor = appBarColors[_tabController.index];
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<LoginViewmodel>(context);
    SizeConfig().init(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: _tabController.index == 2
          ? null
          : AppBar(
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
              brightness: _appBarColor.brightness,
              backgroundColor: _appBarColor.bgColor,
              leading: IconButton(
                  icon: SvgPicture.asset(
                    "assets/hambmenu.svg",
                    color: _appBarColor.iconColor,
                  ),
                  onPressed: () {
                    _scaffoldKey.currentState.openDrawer();
                  }),
              elevation: 0.0,
              actions: <Widget>[
                IconButton(
                  icon: SvgPicture.asset(
                    "assets/notification.svg",
                    color: _appBarColor.iconColor,
                  ),
                  tooltip: 'Notification',
                  onPressed: () {
                    // _scaffoldKey.currentState.openDrawer();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationScreen()));
                  },
                ),
              ],
            ),
      // appBar: CustomHomeAppbar(height: 100,),
      body: Stack(children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    HomeTabScreen(),
                    SocialTabScreen(),
                    ShopTabScreen(),
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
                    controller: _tabController,
                    tabs: [
                      Tab(icon: SvgPicture.asset("assets/ic-home.svg")),
                      Tab(icon: SvgPicture.asset("assets/chat.svg")),
                      Tab(
                          icon: Container(
                              child: Center(
                                  child: SvgPicture.asset(
                                      "assets/shopping-bag.svg")),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: MyColors().pinkActive),
                                  shape: BoxShape.circle))),
                      Tab(
                          icon: SvgPicture.asset(
                        "assets/017-microphone-2.svg",
                      )),
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
        child: NavigationDrawer(),
      ),
    );
  }
}

class AppBarColor {
  const AppBarColor({this.bgColor, this.iconColor, this.brightness});
  final Color bgColor;
  final Color iconColor;
  final Brightness brightness;
}

const List<AppBarColor> appBarColors = const <AppBarColor>[
  const AppBarColor(
      bgColor: Color(0xffED9B9D),
      iconColor: Colors.white,
      brightness: Brightness.dark),
  const AppBarColor(
      bgColor: Colors.white,
      iconColor: Color(0xff656B6E),
      brightness: Brightness.light),
  const AppBarColor(
      bgColor: Color(0xFFAACC96),
      iconColor: Colors.white,
      brightness: Brightness.dark),
  const AppBarColor(
      bgColor: Colors.white,
      iconColor: Color(0xff656B6E),
      brightness: Brightness.light),
  const AppBarColor(
      bgColor: Colors.white,
      iconColor: Color(0xff656B6E),
      brightness: Brightness.light),
];
