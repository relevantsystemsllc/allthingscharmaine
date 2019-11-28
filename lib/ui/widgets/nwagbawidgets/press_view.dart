import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/press_list_card.dart';
import 'package:flutter/material.dart';

class PressView extends StatelessWidget {
  final _controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          PressCardList(
              imagelink: "assets/veggies.jpg",
              firstText: "78 thousand views",
              secText: "3 hours ago"),
          PressCardList(
              imagelink: "assets/beach.jpg",
              firstText: "78 thousand views",
              secText: "3 hours ago")
        ],
      ),
    );
  }
}
