import 'package:allthingscharmaine/model/questions_asked.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/asked_questions_item.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class QAByCharmaine extends StatefulWidget {
  @override
  _QAByCharmaineState createState() => _QAByCharmaineState();
}

class _QAByCharmaineState extends State<QAByCharmaine> {
  String dropdownValue = 'One';
  List<QuestionsAsked> data = Data.getAskedQuestions();
  
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
                      'Q/A by charmaine',
                      style: TextStyle(
                          color: CustomColors.TITLE_COLOR,
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    DropdownButton(
                      // value: dropdownValue,
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      icon: Icon(Icons.list),
                      items: <String>[
                        'Top liked',
                        'Top comments',
                        'newest',
                        'oldest'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
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
                  return AskedQuestionsItem(
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
