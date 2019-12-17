import 'package:allthingscharmaine/core/model/article.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:photo_view/photo_view.dart';

class ArticleDetail extends StatelessWidget{

  ArticleDetail(this._article);
  final Article _article;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
          body: SingleChildScrollView(
          child: Column(children: <Widget>[
          Stack(
          children: <Widget>[
            SizedBox(
                width:screenWidth, height: 400,child: PhotoView(customSize: Size.fromHeight(400),
              imageProvider: CachedNetworkImageProvider(_article.image,), initialScale: PhotoViewComputedScale.contained *1.6, minScale: PhotoViewComputedScale.contained *1.6, maxScale: PhotoViewComputedScale.contained *2.0, basePosition: Alignment.topCenter,
            )),
            AppBar(
              brightness: Brightness.dark,
              iconTheme: IconThemeData(color: Colors.white),
              elevation: 0.0,
              backgroundColor: Colors.transparent,
            ),
            Container(
              margin: EdgeInsets.only(top: 400),
              width: screenWidth,
              height: 35,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0))),
            )
          ]),
          //Expanded(
            //child:
            Container(color: Colors.white,
             padding: EdgeInsets.only(left: 35.0, right: 35.0, bottom: 5.0),
             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(_article.title,style: TextStyle(
                   color: CustomColors.TITLE_EVENT_COLOR,
                   fontSize: 19.0,
                   fontFamily: 'Poppins',
                   fontWeight: FontWeight.w500,
                   height: 1.3),),
               SizedBox(height: 10.0),
               Text(_article.description,
                 style: TextStyle(
                     color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                     fontSize: 12.0,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w300,
                     height: 1.5),),
               SizedBox(height: 15.0),
               Row(
                 children: <Widget>[
                   Icon(Icons.access_time, color: Colors.black38,),
                   SizedBox(width: 5.0),
                   Text(DateFormat.yMMMMd().add_jm().format(_article.date),style:TextStyle(
                       color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                       fontFamily: 'Poppins',
                       fontSize: 12.0,
                       fontWeight: FontWeight.w300,
                       height: 1.5)),
                 ],
               ),
               SizedBox(height: 25.0),
             ],),
           )
          ],)
          ,),
        );

  }
}