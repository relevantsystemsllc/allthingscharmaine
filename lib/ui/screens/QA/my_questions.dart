import 'package:allthingscharmaine/model/questions_asked.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/asked_question_response_card_item.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class MyQuestions extends StatelessWidget {
  final String dropdownValue = 'One';
  final List<QuestionsAsked> data = Data.getMyAskedQuestions();

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    // margin: EdgeInsets.symmetric(horizontal: 16.0),
                    Text(
                      'my questions',
                      style: TextStyle(
                          color: CustomColors.TITLE_COLOR,
                          fontFamily: 'Poppins',
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              ListView.builder(
                // padding: EdgeInsets.only(left: 16.0, right: 16.0),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return AskedQuestionsCard(
                    imagePath: data[index].imagePath,
                    question: data[index].question,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
