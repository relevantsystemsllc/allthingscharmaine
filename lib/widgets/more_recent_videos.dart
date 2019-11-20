import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:allthingscharmaine/widgets/header_video_item.dart';
import 'package:allthingscharmaine/widgets/press_video_detail_page.dart';
import 'package:flutter/material.dart';

class MoreRecentVideos extends StatelessWidget {
  PageController _pageController = PageController(initialPage: 1, viewportFraction: 0.86);
  List listData;
  @override
  Widget build(BuildContext context) {
    listData = Data.getVideoData();
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.only(right: 2.0),
                            child: Text('most recent videos',
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
                )),

            SizedBox(
              height: 19,
            ),
            SizedBox.fromSize(
              size: const Size.fromHeight(260.0),
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  itemCount: listData.length,
                  itemBuilder: (context, position){
                    return GestureDetector(child: imageSlider(position),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => VideoDetail(listData[position])));},);
                  }),)
          ],
        ));
  }
  Widget imageSlider(int index){
    return AnimatedBuilder(
        child: HeaderMovieItem(listData[index]),
        animation: _pageController,
        builder: (context, widget){
          double bias = 1;
          if(_pageController.position.haveDimensions){
            bias = _pageController.page - index;
            bias = (1 - (bias.abs()*0.25)).clamp(0.0, 1.0);
          }
          return Center(child:
          SizedBox(width: Curves.easeInOut.transform(bias)*330, height: Curves.easeInOut.transform(bias)*260, child: widget,));
        });
  }


}
