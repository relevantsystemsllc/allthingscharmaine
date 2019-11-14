import 'package:allthingscharmaine/model/video.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:allthingscharmaine/widgets/press_video_item.dart';
import 'package:flutter/material.dart';

class MoreVideos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List listData = getVideoData();
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(right: 2.0),
                        child: Text('more videos',
                            style: TextStyle(
                              color: CustomColors.TITLE_COLOR,
                              fontSize: 20.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ))),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12.0,
                      color: CustomColors.TITLE_COLOR,
                    )
                  ]),
                ),
                Text('view all',
                    style: TextStyle(
                      color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                      fontSize: 12.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ))
              ],
            ),
            SizedBox(
              height: 19,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  return Container(child: PressVideoItem(listData[index]), margin: EdgeInsets.only(bottom: 10.0),);
                })
          ],
        ));
  }

  List<Video> getVideoData(){
    List<Video> data = [];
    data.add(Video(id: 1,image: "assets/artboard.png", title: "Video 1", description: 'Chaimaine Neque porro quisquam est qui dolorem', viewCount: '51K views', duration: '9:59', time: '3 hours ago'));
    data.add(Video(id: 2,image: "assets/chicago.jpg", title: "Video 2", description: 'Video description 2 hhh jjjjjjjjj', viewCount: '200K views',  duration: '05:50', time: '3 hours ago'));
    data.add(Video(id: 3,image: "assets/chicago-Illinois.jpg", title: "Video 3", description: 'Video description 3', viewCount: '78K views',  duration: '10:50', time: '3 hours ago'));
    data.add(Video(id: 4,image: "assets/blur-breakfast-close-up-376464.jpg", title: 'Video 4', description: 'Video description 4', viewCount: '1M views',  duration: '03:50', time: '3 hours ago'));

    return data;
  }
}
