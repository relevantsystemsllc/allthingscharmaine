import 'package:allthingscharmaine/model/video.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class HeaderMovieItem extends StatelessWidget {
  final Video video;

  HeaderMovieItem(this.video);

  @override
  Widget build(BuildContext context) {
   /* return  ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
       *//* child: Container(
            color: Colors.white,*//*
        *//*decoration: BoxDecoration(
          color: Colors.green,

        ),*//*
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              *//*Stack(
                children: <Widget>[*//*
                  Image.asset(
                    video?.image,
                    height: 180.0,
                    width: 325,
                    fit: BoxFit.cover,
                  ),
                  //Center(child: Image.asset("assets/icons/play.png")),
                  *//*Positioned(
                    child: Icon(Icons.play_arrow),
                    left: .5,
                    right: .5,
                    top: .5,
                    bottom: .5,
                  )*//*
                *//*],
              ),*//*
              Padding(
                  padding:
                  EdgeInsets.only(left: 23.0, right: 23.0, top: 10.0, bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        video?.duration,
                        style: TextStyle(
                          color: CustomColors.TEXT_COLOR,
                          fontSize: 14.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      Text(
                        video?.description,
                        style: TextStyle(
                          color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                          fontSize: 11.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ))
            ]));*/
    return SizedBox(height: 270.0,
        width: 325,child:Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


        Image.asset(
          video?.image,
          height: 180.0,
          width: 325,
          fit: BoxFit.cover,
        ),
        Padding(
            padding:
            EdgeInsets.only(left: 23.0, right: 23.0, top: 10.0, bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  video?.duration,
                  style: TextStyle(
                    color: CustomColors.TEXT_COLOR,
                    fontSize: 14.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Text(
                  video?.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                    fontSize: 11.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ))
          ])
    ));
  }
}
