import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

import 'carousel_card_view.dart';

class CarouselViews extends StatelessWidget {
  final _controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      child: PageIndicatorContainer(
        align: IndicatorAlign.bottom,
        length: 3,
        indicatorSpace: 10,
        padding: EdgeInsets.all(2.0),
        shape: IndicatorShape.circle(size: 7.0),
        indicatorColor: Colors.grey.shade200, 
        indicatorSelectorColor: MyColors().pinkInactive,
        
        child: PageView(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CarouselCard(
              time: "9:59",
              text: "Charmaine Neque porto quisquam est qui dolorem",
            ),
            CarouselCard(
              time: "9:59",
              text: "Charmaine Neque porto quisquam est qui dolorem",
            ),
            CarouselCard(
              time: "9:59",
              text: "Charmaine Neque porto quisquam est qui dolorem",
            )
          ],
        ),
      ),
    );
  }
}
