import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomHomeAppbar extends StatelessWidget with PreferredSizeWidget {
  final double height;
  final Color bgColor;
  


  CustomHomeAppbar({Key key, @required this.height, @required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: SvgPicture.asset(
                  "assets/hambmenu.svg",
                  color: bgColor,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
              Spacer(),
              Text(" "),
              Spacer(),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/notification.svg",
                  color: bgColor,
                ),
                onPressed: null,
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
