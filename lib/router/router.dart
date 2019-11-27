
import 'package:allthingscharmaine/screens/notfound/notfound_page.dart';
import 'package:allthingscharmaine/screens/shop1.dart';
import 'package:allthingscharmaine/screens/shop2.dart';
import 'package:allthingscharmaine/screens/shop3.dart';
import 'package:allthingscharmaine/screens/shop4.dart';
import 'package:allthingscharmaine/screens/shop5.dart';
import 'package:allthingscharmaine/screens/shop6.dart';
import 'package:allthingscharmaine/screens/shop7.dart';
import 'package:allthingscharmaine/screens/social1.dart';
import 'package:allthingscharmaine/screens/social2.dart';
import 'package:allthingscharmaine/screens/social3.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/material.dart';



class Router {


    static Route<dynamic> generateRoute(settings) {
      switch (settings.name) {
        case UIData.shopRoute:
          return MaterialPageRoute(builder: (_) => Shop1());
          break;
        case UIData.shopItemRoute:
          return MaterialPageRoute(builder: (_) => Shop2(item:settings.arguments));
          break;
        case UIData.shopBookRoute:
          return MaterialPageRoute(builder: (_) => Shop7(book:settings.arguments));
          break;
        case UIData.codeErrorRoute:
          return MaterialPageRoute(builder: (_) => Shop3());
          break;
        case UIData.addedToLibraryRoute:
          return MaterialPageRoute(builder: (_) => Shop4());
          break;
        case UIData.addedToCartRoute:
          return MaterialPageRoute(builder: (_) => Shop5(color: settings.arguments));
          break;
        case UIData.paymentRoute:
          return MaterialPageRoute(builder: (_) => Shop6());
          break;
        case UIData.socialCommentRoute:
          return MaterialPageRoute(builder: (_) => Social1(social: settings.arguments));
          break;
        case UIData.socialReplyRoute:
          return MaterialPageRoute(builder: (_) => Social2(social: settings.arguments));
          break;
        case UIData.social:
          return MaterialPageRoute(builder: (_) => Social3());
          break;
      }
    }

    static Route<dynamic>  unknownRoute (settings) {
      return new MaterialPageRoute(
        builder: (context) => new NotFoundPage(
        ));
    }

}



