
import 'package:allthingscharmaine/model/socialPlatform.dart';
import 'package:allthingscharmaine/core/services/socialData.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/socialPlatfromView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/bottomNavBar.dart';

class Social3 extends StatefulWidget{

  @override
  Social3State createState() => Social3State();
}

class Social3State extends State<Social3> {
  List<SocialPlatform> platforms;




  @override
  void initState() {
    platforms = Provider.of<SocialData>(context, listen: false).getSocialPlatforms();
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
                            ImageIcon(AssetImage(UIData.hambMenu),color: Colors.black54,),
                            ImageIcon(AssetImage(UIData.notification),color: Colors.black54)
                          ],mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),padding: EdgeInsets.only(left: 40.0,right: 30.0)),flex: 1,),
                         // SizedBox(height:30.0),
        Flexible(
          child: Align(child:Padding(child:Text(UIData.socialHeader,style: TextStyle(fontSize: 30.0,color: Colors.black54,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),padding: EdgeInsets.only(left: 40.0),),alignment: Alignment.centerLeft),flex: 1),
        Flexible(
          child:   ListView(children:platforms.map((platform)=>SocialPlatformView(sp: platform)).toList()),flex: 8,fit: FlexFit.loose),
                        ],crossAxisAlignment: CrossAxisAlignment.start),
                  BottomNavBar(),
                ],
              ),bottom: false
              )
      );
  }
}