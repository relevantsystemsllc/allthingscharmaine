import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
      
        iconTheme: IconThemeData(
          color: CustomColors.TITLE_COLOR,
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[

          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16, bottom: 8, top: 24),
              child: Text(
                "notifications",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}