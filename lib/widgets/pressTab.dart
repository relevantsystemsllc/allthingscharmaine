import 'package:flutter/material.dart';
import 'more_recent_videos.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';

class PressTab extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("press", style: TextStyle(color: CustomColors.TITLE_COLOR, fontSize:30.0, fontFamily: 'Poppins', fontWeight: FontWeight.w600,),),
            MoreRecentVideos()
          ],
        ),

    ),);
  }

}