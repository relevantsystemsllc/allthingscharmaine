import 'package:allthingscharmaine/ui/screens/home_screen.dart';
import 'package:allthingscharmaine/ui/screens/signupscreens/name_reg_screen.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/viewmodels/loginviewmodel.dart';
import 'core/viewmodels/user_creditcard_viewmodel.dart';
import 'core/viewmodels/userviewmodel.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

/*
class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

  class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    return MaterialApp(
      title: 'Charmaine',debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(child: NavigationDrawer(),),
        appBar: AppBar(
          leading: IconButton(icon: Image.asset('assets/hamb-menu.png'), onPressed: () { _scaffoldKey.currentState.openDrawer();}),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/notification.png'),
              tooltip: 'Notification',
              onPressed: () { _scaffoldKey.currentState.openDrawer();},
            ),
          ],
        ),
        body: PressTab(),
      ),
    );
*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<FirebaseUser>(
      future: FirebaseAuth.instance.currentUser(),
      builder: (BuildContext context, AsyncSnapshot<FirebaseUser> snapshot) {
        if (snapshot.hasData) {
          // FirebaseUser user = snapshot.data;

          return MultiProvider(
            providers: [
              ChangeNotifierProvider(
                builder: (_) => locator<UserViewModel>(),
              ),
              ChangeNotifierProvider(
                builder: (_) => locator<LoginViewmodel>(),
              ),
              ChangeNotifierProvider(
                builder: (_) => locator<UserCreditCardViewmodel>(),
              )
            ],
            child: MaterialApp(
              home: HomeScreen(),
              theme: ThemeData(
                  cursorColor: MyColors().pinkInactive,
                  primaryColor: MyColors().pinkInactive,
                  accentColor: MyColors().pinkActive,
                  fontFamily: 'Poppins'),
            ),
          );
        } else {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(
                builder: (_) => locator<UserViewModel>(),
              ),
              ChangeNotifierProvider(
                builder: (_) => locator<LoginViewmodel>(),
              ),
              ChangeNotifierProvider(
                builder: (_) => locator<UserCreditCardViewmodel>(),
              )
            ],
            child: MaterialApp(
              home: Homepage(),
              theme: ThemeData(
                  cursorColor: MyColors().pinkInactive,
                  primaryColor: MyColors().pinkInactive,
                  accentColor: MyColors().pinkActive,
                  fontFamily: 'Poppins'),
            ),
          );
        }
      },
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NameRegScreen();
  }
}