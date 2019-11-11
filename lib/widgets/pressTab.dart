import 'package:flutter/material.dart';
import 'more_recent_videos.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';

class PressTab extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 16.0),
                child: Text("press", style: TextStyle(color: CustomColors.TITLE_COLOR, fontSize:30.0, fontFamily: 'Poppins', fontWeight: FontWeight.w600,),)),
            SizedBox(height: 10.0,),
            MoreRecentVideos()
          ],
        ),

    ),);
  }

}