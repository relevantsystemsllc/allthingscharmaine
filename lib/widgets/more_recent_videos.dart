import 'package:allthingscharmaine/model/video.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:allthingscharmaine/widgets/header_movie_item.dart';
import 'package:flutter/material.dart';

class MoreRecentVideos extends StatelessWidget {
  PageController _pageController = PageController(initialPage: 0, viewportFraction: 0.83);
  List listData;
  @override
  Widget build(BuildContext context) {
    listData = getVideoData();
    return Column(
      children: <Widget>[
        Padding( padding: EdgeInsets.symmetric(horizontal: 16.0), child: Row(
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
        ),),
         Container(margin: EdgeInsets.symmetric(horizontal: 16.0),
         child: HeaderMovieItem(listData[0]),),
       /* CarouselSlider(

          items: listData.map((item){
            return  Container(
                width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 7.0),

            child: HeaderMovieItem(item));
          }).toList(),
          //aspectRatio: 4/3,
          viewportFraction: 0.9,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: false,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(milliseconds: 800),

          pauseAutoPlayOnTouch: Duration(seconds: 10),
          enlargeCenterPage: true,

          scrollDirection: Axis.horizontal,
        ),*/
        SizedBox(
          height: 0,
        ),
    SizedBox.fromSize(
    size: const Size.fromHeight(280.0),
    child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            itemCount: listData.length,
            itemBuilder: (context, position){
              return imageSlider(position);
            }),)
      ],
    );
  }
  Widget imageSlider(int index){
    return AnimatedBuilder(
        child: Container(margin: EdgeInsets.only(left: 5.0, right:5.0),
            child: HeaderMovieItem(listData[index])),
        animation: _pageController,
        builder: (context, widget){
          double bias = 1;
          if(_pageController.position.haveDimensions){
            bias = _pageController.page - index;
            bias = (1 - (bias.abs()*0.25)).clamp(0.0, 1.0);
          }
          return Center(child:
          SizedBox(width: Curves.easeInOut.transform(bias)*325, height: Curves.easeInOut.transform(bias)*270, child: widget,));
        });
  }

  List<Video> getVideoData(){
    List<Video> data = [];
    data.add(Video(id: 1,image: "assets/artboard.png", title: "Video 1", description: "Chaimaine Neque porro quisquam est qui dolorem", viewCount: 20, duration: "9:59"));
    data.add(Video(id: 2,image: "assets/chicago.jpg", title: "Video 2", description: "Video description 2 hhh jjjjjjjjj", viewCount: 50,  duration: "05:50"));
    data.add(Video(id: 3,image: "assets/chicago-Illinois.jpg", title: "Video 3", description: "Video description 3", viewCount: 100,  duration: "10:50"));
    data.add(Video(id: 4,image: "assets/blur-breakfast-close-up-376464.jpg", title: "Video 4", description: "Video description 4", viewCount: 25,  duration: "03:50"));

return data;
  }
}
