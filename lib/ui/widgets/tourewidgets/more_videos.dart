import 'package:allthingscharmaine/ui/screens/press/press_video_list_page.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/press_video_item.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MoreVideos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: StreamBuilder(stream: Firestore.instance.collection('video').orderBy('createdAt', descending: true).limit(7).snapshots(),
    builder: (context, snapShot){
      if(!snapShot.hasData || snapShot.data.documents.length < 5)return Container();
        return Column(
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
                GestureDetector(child: Padding(
                  padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 3.0),
                  child: Text('view all',
                      style: TextStyle(
                        color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                        fontSize: 12.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      )),), onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>
                          PressVideoList(title: 'press', category: 'videos',)));
                })
              ],
            ),
            SizedBox(
              height: 19,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: snapShot.data.documents.length - 4, //We display a maximum of 3 element from the possible 7 elements
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  return Container(child: PressVideoItem(snapShot.data.documents[index+4]), margin: EdgeInsets.only(bottom: 10.0),);
                })
          ],
        );}));
  }
}
