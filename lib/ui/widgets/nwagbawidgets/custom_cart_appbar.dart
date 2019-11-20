import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCartAppbar extends StatelessWidget with PreferredSizeWidget {
  final double height;
  final Color bgColor;
  String title = " ";

  CustomCartAppbar(
      {Key key, @required this.height, @required this.bgColor, this.title})
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
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Spacer(),
              Text(title),
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
