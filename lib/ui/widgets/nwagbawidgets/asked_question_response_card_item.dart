import 'package:allthingscharmaine/utils/imageClipper.dart';
import 'package:flutter/material.dart';

class AskedQuestionsCard extends StatelessWidget {
  final String imagePath;
  final String question;
  AskedQuestionsCard({@required this.imagePath, @required this.question});
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 100,
      width: screenSize,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  clipper: ImageClipper(),
                  child: ClipOval(
                    child: Image.asset(
                      imagePath,
                      height: 40,
                      width: 40,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Expanded(flex: 2, child: Text(question)),
            ],
          ),
        ),
      ),
    );
  }
}
