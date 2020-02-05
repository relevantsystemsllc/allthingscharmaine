import 'dart:ui';

import 'package:flutter/material.dart';

class UIData {
  //routes
  static const String homeRoute = "/home";
  static const String shopRoute = "/shop";
  static const String shopItemRoute = "/shopItem";
  static const String shopBookRoute = "/shopBook";
  static const String codeErrorRoute = "/codeError";
  static const String addedToCartRoute = "/addedToCart";
  static const String addedToLibraryRoute = "/addedToLibrary";
  static const String paymentRoute = "/payment";
  static const String socialRoute = "/social";
  static const String socialReplyRoute = "/socialReply";
  static const String socialCommentRoute = "/socialComment";
  static const String unknown = "No route defined for ";

  //strings

//App Name
  static const String appName = "All Things Charmaine";

  //fonts

  //images
  static const String hambMenu = "assets/hamb-menu.png";
  static const String notification = "assets/notification.png";
  static const String apron1 = "shop/approns1.png";
  static const String apron2 = "shop/approns2.png";
  static const String apron3 = "shop/approns3.png";
  static const String apron4 = "shop/approns4.png";
  static const String book2 = "shop/book2.png";
  static const String bookHeader = "shop/book2Header.png";
  static const String error = "assets/ICON 2.png";
  static const String library ="assets/ICON 4.png";
  static const String cartIcon = "assets/ICON 3.png";
  static const String applePay = "assets/apple pay logo.png";
  static const String androidPay = 'assets/android pay.png';
  static const String commentHeader = 'social/blur-breakfast-close-up-376464.jpg';
  static const String attachment ='assets/attachment.png';
  static const String gallery = "assets/gallery.png";
  static const String author = 'social/author/Charmaine.png';
  //login


  //firebase storage location

  static const String storage = "gs://charmaine-defe5.appspot.com/";

  //navbar
  static const String home = "Home";
  static const String social = "Social";
  static const String shop = "Shop";
  static const String cart = "Cart";
  static const String press = "Press";


  //TabBar
  static const String apronTab = "approns";
  static const String bookTab = "books";
  static const String clothingTab = "clothings";
  static const String jewelryTab = "Jewelries";

  static const String shopHeader = "Categories";
  static const String paymentHeader = 'Payment';
  static const String socialHeader = 'Social';

//colors
   static final Color shopColor = Colors.green[200];
  static final Color bookColor = Colors.deepOrange[200];
  static final Color clothingColor = Colors.pink[200];
  static final Color jewelryColor = Colors.blue[200];
  static final List<Color> shopColors = [Colors.green[100],Colors.green[100],Colors.green[200],Colors.green[100],Colors.green[100]];
  static final List<Color> shopItemColors = [Colors.orangeAccent,Colors.teal,Colors.orangeAccent,Colors.pinkAccent,Colors.lightGreenAccent];
  static final List<Color> socialItemColors = [Colors.pink[100],Colors.pink[100],Colors.pink[200],Colors.pink[100],Colors.pink[100]];

//streams

//randomcolor


//Actions

static const String addToCart = 'add to cart';
static const String back = 'back';
static const String commentButton = 'comment';
  static const String send = 'reply';


//info
static const String wrong ='wrong';
static const String tryCodeAgain = 'try again with code';
static const String addedToLibrary ="Added to library";
static const String productAddedToLibrary = 'Your product has already been added to library';
static const String addedToCart ="Added to cart";
static const String productAddedToCart = 'Your product has already been added';
static const String reply ="reply";
static const String response = 'response';
  /// Returns a random color.

}
