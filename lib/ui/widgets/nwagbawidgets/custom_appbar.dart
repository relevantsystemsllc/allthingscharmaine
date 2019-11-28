import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final bool istrue;
  final String title;
  const CustomAppbar({Key key, @required this.istrue, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: istrue ? null : () => _moveToNextScreen(context),
              )
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "$title",
                style: TextStyle(
                    fontSize: 30.0,
                    color: MyColors().pinkActive,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _moveToNextScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
