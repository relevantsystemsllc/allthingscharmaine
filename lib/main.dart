import 'package:allthingscharmaine/router/router.dart';
import 'package:allthingscharmaine/screens/social3.dart';
import 'package:allthingscharmaine/services/shopData.dart';
import 'package:allthingscharmaine/services/socialData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(builder: (_) => ShopData()),
      ChangeNotifierProvider(builder: (_) => SocialData()),
    ], child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'All things Charmaine',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: Router.generateRoute,
        onUnknownRoute: Router.unknownRoute,
        home: Social3());

  }

// posts - comments

//navigator
}
