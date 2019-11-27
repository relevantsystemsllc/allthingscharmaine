import 'package:allthingscharmaine/ui/screens/press/press_video_list_page.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/press_video_item.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class MoreVideos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List listData = Data.getVideoData();
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
                  return GestureDetector(child: Container(child: PressVideoItem(listData[index]), margin: EdgeInsets.only(bottom: 10.0),),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => PressVideoList(title: 'press', category: 'videos',)));},);
                })
          ],
        ));
  }
}
