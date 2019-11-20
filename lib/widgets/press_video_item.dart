import 'package:allthingscharmaine/model/video.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class PressVideoItem extends StatelessWidget {
  final Video video;

  PressVideoItem(this.video);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 90.0,
      width: screenWidth,
      child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Image.asset(
            video?.image,
            height: 84.0,
            width: 96,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 19.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(child: Container(width: 185,child: Text(
                    video?.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: CustomColors.TEXT_COLOR,
                      fontSize: 13.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                ),),),
                Text(
                  video?.viewCount,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: CustomColors.TEXT_COLOR.withOpacity(.5),
                    fontSize: 10.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  video?.time,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: CustomColors.TEXT_COLOR.withOpacity(.5),
                    fontSize: 10.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),)],)));
  }
}
