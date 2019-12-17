import 'package:allthingscharmaine/model/QA.dart';
import 'package:allthingscharmaine/ui/screens/QA/qa_by_charmaine.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/qa_item.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/drawer_widget.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

import 'ask_question_screen.dart';
import 'asked_questions_screen.dart';
import 'my_questions.dart';

class QAScreen extends StatefulWidget {
  @override
  _QAScreenState createState() => _QAScreenState();
}

class _QAScreenState extends State<QAScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<QA> data = Data.getQAData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: Image.asset('assets/hamb-menu.png'),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            }),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: CustomColors.TITLE_COLOR,
        ),
        title: Text(
          'charmaine tv',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              fontSize: 15.0,
              color: CustomColors.TITLE_COLOR),
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
      drawer: Drawer(
        child: NavigationDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Q/A',
                style: TextStyle(
                    color: CustomColors.TITLE_COLOR,
                    fontFamily: 'Poppins',
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            ListView.builder(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              itemCount: data.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Container(
                    child: QAItem(
                        imagePath: data[index].imagePath,
                        name: data[index].name),
                    padding: EdgeInsets.only(bottom: 10.0),
                  ),
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => QAByCharmaine()));
                    }
                    if (index == 1) {
                      // open questions asked
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AskedQuestion()));
                    }
                    if (index == 2) {
                      // open ask a question
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => AskQuestion()));
                    }
                    if (index == 3) {
                      // open my questions

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => MyQuestions()));
                    }
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
