import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

import 'more_recent_articles.dart';
import 'more_recent_events.dart';
import 'more_recent_videos.dart';
import 'more_videos.dart';

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
            MoreRecentVideos(),
            SizedBox(height: 46, ),
            MoreRecentArticles(),
            SizedBox(height: 46, ),
            MoreVideos(),
            SizedBox(height: 46, ),
            MoreRecentEvents(),
            SizedBox(height: 40,  ),
          ],
        ),

    ),);
  }

}