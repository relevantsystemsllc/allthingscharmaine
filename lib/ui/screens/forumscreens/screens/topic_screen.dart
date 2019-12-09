import 'package:flutter/material.dart';
import 'package:allthingscharmaine/ui/screens/forumscreens/utilities/constants.dart';
import 'package:allthingscharmaine/ui/screens/forumscreens/screens/sub_post_screen.dart';
import 'package:allthingscharmaine/ui/screens/forumscreens/screens/new_topic_screen.dart';


class TopicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'topics',
          style: kAppBarTextStyle,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 34.0, bottom: 14.0, top: 19.0, right:34.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'topics',
              style: kHeadingTextStyle,
            ),
            SizedBox(
              height: 54.0,
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(9.0)),
                    child: Align(
                      alignment: Alignment.center,
                      heightFactor: 0.5,
                      widthFactor: 0.5,
                      child: Image.asset(
                        'images/bottlefur.jpg',
                        scale: 30.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('perfume', style: kPostTitleTextStyle),
                        Text('last post 1 minute ago by charmaine',
                            style: kPostTimeTextStyle)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(9.0)),
                    child: Align(
                      alignment: Alignment.center,
                      heightFactor: 0.5,
                      widthFactor: 0.78,
                      child: Image.asset(
                        'images/aloevera.jpg',
                        scale: 1.7,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('shampoo', style: kPostTitleTextStyle),
                        Text('last post 1 minute ago by charmaine',
                            style: kPostTimeTextStyle)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      heightFactor: 0.44,
                      widthFactor: 0.95,
                      child: Image.asset(
                        'images/lipstick.jpg',
                        scale: 16.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, top:20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('lipstick', style: kPostTitleTextStyle),
                        Text('last post 1 minute ago by charmaine',
                            style: kPostTimeTextStyle)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    child: Align(
                      alignment: Alignment.center,
                      heightFactor: 0.6,
                      widthFactor: 0.6,
                      child: Image.asset(
                        'images/eyebrush.jpg',
                        scale: 29.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('eyeliner', style: kPostTitleTextStyle),
                        Text('last post 1 minute ago by charmaine',
                            style: kPostTimeTextStyle)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 42.0,
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
                      return NewTopicScreen();
                    })
                );
              },
              child: Center(
                child: Padding(
                  padding:  EdgeInsets.all(17.0),
                  child: Text(
                    'new topic',
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
