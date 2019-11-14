import 'package:allthingscharmaine/model/video.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class HeaderMovieItem extends StatelessWidget {
  final Video video;

  HeaderMovieItem(this.video);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(height: 260.0,
        width: screenWidth,child:Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

        Flexible(
            flex:2,
            child: Image.asset(
          video?.image,
          height: 171.0,
          width: screenWidth,
          fit: BoxFit.cover,
        )),
        Flexible(flex:1, child: Padding(
            padding:
            EdgeInsets.only(left: 23.0, right: 23.0, top: 10.0, bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Flexible(
                    child: Text(
                  video?.duration,
                  style: TextStyle(
                    color: CustomColors.TEXT_COLOR,
                    fontSize: 14.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                )),

            Flexible(
              child: Text(
                  video?.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                    fontSize: 11.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),),
              ],
            )))
          ])
    ));
  }
}
