import 'package:flutter/material.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';

class Charmainetv extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
        color: CustomColors.TITLE_COLOR,
    ),
    title: Text('charmaine tv' , style: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize:15.0, color: CustomColors.TITLE_COLOR),),
    elevation: 0.0,
    actions: <Widget>[
    IconButton(
    icon: Image.asset('assets/notification.png'),
    tooltip: 'Notification',
    onPressed: () {},
    ),
    ],
    ),
    body: SingleChildScrollView();
    );
  }
}