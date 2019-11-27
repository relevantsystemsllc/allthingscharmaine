import 'package:allthingscharmaine/model/socialPlatform.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:allthingscharmaine/widgets/socialView.dart';
import 'package:flutter/material.dart';


class SocialPlatformView extends StatelessWidget {
  final SocialPlatform sp;

  SocialPlatformView({@required this.sp});

  static List<double>  radian = [3.0,3.0,4.0,3.0,3.0];
  static List<Color>   color = UIData.socialItemColors;





  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
            children:[
              SizedBox(height: 10.0),
              Padding(child:Text("${sp.platform} >",style: TextStyle(color: Colors.black87,fontSize: 18.0,fontFamily: 'Poppins')),padding: EdgeInsets.only(left: 40.0)),
              SizedBox(height: 300.0,child:
              ListView(
                scrollDirection: Axis.horizontal, children: sp.social.map((social)=> SocialViewCard(social: social,)).toList())),
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
                    ))),
              SizedBox(height: 30.0)],crossAxisAlignment: CrossAxisAlignment.start,),width: 375.0);
  }
}

