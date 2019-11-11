import 'package:flutter/material.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';

class MoreRecentVideos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
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
        )
      ],
    );
  }
}
