import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShopViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Text(
                    "shop ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),Spacer(),
                Text(
                  "view all",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          Container(
            height: 190,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/ICON 8.svg",
                    ),
                    Text(
                      "some text",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SvgPicture.asset("assets/ICON 5.svg"),
                    Text(
                      "some text",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SvgPicture.asset("assets/ICON 6.svg"),
                    Text(
                      "some text",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SvgPicture.asset("assets/ICON 7.svg"),
                    Text(
                      "some text",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
