import 'package:allthingscharmaine/core/model/video.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class VideoDetail extends StatelessWidget {
  VideoDetail(@required this._video): assert(_video != null);

  final Video _video;
  ScrollController _scrollController =
  ScrollController(initialScrollOffset: 0.0, keepScrollOffset: true);
  List listData = Data.getVideoData();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              SizedBox(
                  width: screenWidth,
                  height: 360,
                  child: PhotoView(
                    customSize: Size.fromHeight(360),
                    imageProvider: CachedNetworkImageProvider(_video.image,),
                    initialScale: PhotoViewComputedScale.contained * 1.6,
                    minScale: PhotoViewComputedScale.contained * 1.6,
                    maxScale: PhotoViewComputedScale.contained * 2.0,
                    basePosition: Alignment.topCenter,
                  )),
              AppBar(
                brightness: Brightness.dark,
                iconTheme: IconThemeData(color: Colors.white),
                elevation: 0.0,
                backgroundColor: Colors.transparent,
              ),
              Container(
                margin: EdgeInsets.only(top: 360),
                width: screenWidth,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0))),
              ),
              Positioned.fill(child: Align(
                  alignment: Alignment.centerRight,
                  child: Center(child: Container(width: 55.0, height: 55.0,
                child: Icon(Icons.play_arrow, color: Colors.white,),
                decoration: new BoxDecoration(
                  color: Color(0xff7e583e).withOpacity(.97),
                  shape: BoxShape.circle,
                ),))))
            ]),
            //Expanded(
            //child:
            Container(
              color: Colors.white,
              width: screenWidth,
              padding: EdgeInsets.only(left: 35.0, right: 35.0, bottom: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _video.duration,
                    style: TextStyle(
                        color: CustomColors.TEXT_COLOR,
                        fontSize: 14.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.3),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    _video.title,
                    style: TextStyle(
                        color: CustomColors.TITLE_EVENT_COLOR,
                        fontSize: 19.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.3),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    _video.description,
                    style: TextStyle(
                        color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                        fontSize: 12.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        height: 1.5),
                  ),
                  SizedBox(height: 40.0),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 2.0),
                            child: Text('more videos',
                                style: TextStyle(
                                  color: CustomColors.TITLE_COLOR,
                                  fontSize: 16.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ))),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12.0,
                          color: CustomColors.TITLE_COLOR,
                        )
                      ]),
                  SizedBox(height: 12.0),


                ],
              ),
            ),
            SizedBox(
                height:220,
                child: ListView.builder(
                  itemCount: listData.length,
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    if(index == 0){
                      return Container(child: MoreVideoItem(video: listData[index]),  padding: EdgeInsets.only(left: 35.0),);
                    }else if(index == listData.length-1){
                      return Container(child: MoreVideoItem(video: listData[index]),  padding: EdgeInsets.only(left: 20.0, right: 35.0),);
                    }else{
                      return Container(child: MoreVideoItem(video: listData[index]),  padding: EdgeInsets.only(left: 20.0),);
                    }

                  }),
                )),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }

  /*void _getColorPalette(String imagePath) async{
    PaletteGenerator generator = await PaletteGenerator
        .fromImageProvider(AssetImage(imagePath), size: Size(200,200));
    if(generator.darkMutedColor != null) _playerColor = generator.darkMutedColor;

  }*/
}

class MoreVideoItem extends StatelessWidget {
  final Video video;
  MoreVideoItem({@required this.video, Key key}) : assert(video != null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 250, height: 218,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                video?.image,
                height: 133.0,
                width: 250,
                fit: BoxFit.cover,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: 17.0, right: 17.0, top: 11.0, bottom: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        video?.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: CustomColors.TEXT_COLOR,
                          fontSize: 13.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        video?.viewCount.toString() + ' views',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: CustomColors.TEXT_COLOR.withOpacity(.5),
                          fontSize: 10.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(video?.getPublishedDate(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: CustomColors.TEXT_COLOR.withOpacity(.5),
                            fontSize: 10.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  )),
            ])),);
  }
}
