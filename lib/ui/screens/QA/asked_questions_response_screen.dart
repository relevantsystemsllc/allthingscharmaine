import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/asked_question_response_card_item.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

class AskedQuestionsResponse extends StatefulWidget {
  final String imagePath;
  final String question;
  AskedQuestionsResponse({@required this.imagePath, @required this.question});
  @override
  _AskedQuestionsResponseState createState() => _AskedQuestionsResponseState();
}

class _AskedQuestionsResponseState extends State<AskedQuestionsResponse> {
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
        centerTitle: true,
        iconTheme: IconThemeData(
          color: CustomColors.TITLE_COLOR,
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/notification.png'),
            tooltip: 'Notification',
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'questions asked',
                      style: TextStyle(
                          color: CustomColors.TITLE_COLOR,
                          fontFamily: 'Poppins',
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                AskedQuestionsCard(
                  imagePath: widget.imagePath,
                  question: widget.question,
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "response",
                    ),
                    scrollPadding: EdgeInsets.all(20.0),
                    keyboardType: TextInputType.multiline,
                    maxLines: 100,
                    // autofocus: true,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 50.0,
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            "send",
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(color: MyColors().pinkActive),
                          ),
                          color: MyColors().pinkActive,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
