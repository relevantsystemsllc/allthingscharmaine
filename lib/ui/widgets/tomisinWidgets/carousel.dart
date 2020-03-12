import 'package:allthingscharmaine/core/model/social.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

import 'socialView.dart';

class Carousel extends StatelessWidget {
  final _controller = PageController(initialPage: 0);
  final List<Social> social;

  Carousel({this.social}):assert(social!=null);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: PageIndicatorContainer(
        align: IndicatorAlign.bottom,
        length: social.length,
        indicatorSpace: 10,
        padding: EdgeInsets.all(2.0),
        shape: IndicatorShape.circle(size: 7.0),
        indicatorColor: Colors.grey.shade200,
        indicatorSelectorColor: MyColors().pinkInactive,
        child: PageView(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          children: social.map((social)=> SocialViewCard(social: social)).toList()),
        ),
    );
  }
}
