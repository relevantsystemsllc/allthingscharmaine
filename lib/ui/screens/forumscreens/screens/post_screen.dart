import 'package:flutter/material.dart';
import 'package:allthingscharmaine/ui/widgets/colewidgets/constants.dart';
import 'package:allthingscharmaine/ui/screens/forumscreens/screens/sub_post_screen.dart';
import 'package:allthingscharmaine/ui/screens/forumscreens/screens/new_topic_screen.dart';
import 'package:allthingscharmaine/ui/screens/forumscreens/screens/new_thread_screen.dart';

class SubCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xff656B6E),
        ),
        backgroundColor: Colors.transparent,
        title: Text('fashion', style: kAppBarTextStyle),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/notification.png'),
            tooltip: 'Notification',
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding:
            EdgeInsets.only(left: 34.0, bottom: 14.0, top: 19.0, right: 34.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'perfume',
              style: kHeadingTextStyle,
            ),
            SizedBox(
              height: 17.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return SubPostScreen();
                    })
                );
              },
              child: Container(
                width: 302.0,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xFFE6E6E6)))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("what's your favourite perfume?",
                        style: kPostTitleTextStyle),
                    Text('last post 1 minute ago by anna',
                        style: kPostTimeTextStyle),
                    SizedBox(
                      height: 15.0,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              child: Container(
                width: 302.0,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xFFE6E6E6)))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("what's your favourite perfume?",
                        style: kPostTitleTextStyle),
                    Text('last post 1 minute ago by anna',
                        style: kPostTimeTextStyle),
                    SizedBox(
                      height: 15.0,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              child: Container(
                width: 302.0,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xFFE6E6E6)))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("what's your favourite perfume?",
                        style: kPostTitleTextStyle),
                    Text('last post 1 minute ago by anna',
                        style: kPostTimeTextStyle),
                    SizedBox(
                      height: 15.0,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              child: Container(
                width: 302.0,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xFFE6E6E6)))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("what's your favourite perfume?",
                        style: kPostTitleTextStyle),
                    Text('last post 1 minute ago by anna',
                        style: kPostTimeTextStyle),
                    SizedBox(
                      height: 15.0,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              child: Container(
                width: 302.0,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xFFE6E6E6)))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("what's your favourite perfume?",
                        style: kPostTitleTextStyle),
                    Text('last post 1 minute ago by anna',
                        style: kPostTimeTextStyle),
                    SizedBox(
                      height: 15.0,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              child: Container(

//
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("what's your favourite perfume?",
                        style: kPostTitleTextStyle),
                    Text('last post 1 minute ago by anna',
                        style: kPostTimeTextStyle),
                    SizedBox(
                      height: 15.0,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17.0,
            ),
            FlatButton(
              color: Color(0xFFED9B9D),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200.0),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return NewTopicScreen();
                    })
                );
              },
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Text(
                    'new topic',
                    style: TextStyle(fontSize: 11.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            OutlineButton(
              borderSide: BorderSide(
                color: Color(0xFFED9B9D),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200.0),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return NewThreadScreen();
                    })
                );
              },
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Text(
                    'new thread',
                    style: TextStyle(fontSize: 11.0, color: Color(0xFFED9B9D)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
