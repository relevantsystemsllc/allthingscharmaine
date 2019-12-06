import 'package:allthingscharmaine/ui/screens/QA/asked_questions_response_screen.dart';
import 'package:allthingscharmaine/utils/imageClipper.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

class AskedQuestionsItem extends StatelessWidget {
  final String imagePath;
  final String question;

  AskedQuestionsItem({@required this.imagePath, this.question});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 115,
      width: screenWidth,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AskedQuestionsResponse(
                        imagePath: imagePath,
                        question: question,
                      )));
        },
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        color: MyColors().pinkActive,
                      ),
                      Spacer(),
                      Icon(
                        Icons.comment,
                        color: MyColors().pinkActive,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
