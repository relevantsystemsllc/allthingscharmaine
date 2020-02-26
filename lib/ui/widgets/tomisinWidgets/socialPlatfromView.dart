import 'package:allthingscharmaine/core/model/socialPlatform.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/carousel.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/material.dart';


class SocialPlatformView extends StatelessWidget {
  final SocialPlatform sp;

  SocialPlatformView({@required this.sp});

  static List<double>  radian = [3.0,3.0,4.0,3.0,3.0];
  static List<Color>   color = UIData.socialItemColors;





  @override
  Widget build(BuildContext context) {
    return Column(
            children:[
              SizedBox(height: 10.0),
              Padding(child:Text("${sp.platform} >",style: TextStyle(color: Colors.black87,fontSize: 18.0,fontFamily: 'Poppins')),padding: EdgeInsets.only(left: 40.0)),
              Carousel(social:sp.social),
              SizedBox(height: 10.0)],crossAxisAlignment: CrossAxisAlignment.start);
  }
}

