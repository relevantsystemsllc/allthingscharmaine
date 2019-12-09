import 'package:flutter/material.dart';
import 'package:allthingscharmaine/ui/screens/forumscreens/screens/topic_screen.dart';
import 'package:allthingscharmaine/ui/screens/forumscreens/utilities/constants.dart';




class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        //Todo: Add menu icon to the appbar
        backgroundColor: Colors.white,
        title: Text(
          'forum',
          style: kAppBarTextStyle,

        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 34.0, bottom: 14.0, top: 19.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'categories',
              style: kHeadingTextStyle,
            ),
            SizedBox(
              height: 14.0,
            ),
            Text('charmaine',
                style: kSubHeadingTextStyle,
                ),
            SizedBox(
              height: 14.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {


              },
              //Todo: Change all images to correct images, also change to CacheImageNetwork widget
              //Todo: Add functionality to make each list replicate the topic_screen for charmaine when clicked
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(9.0)),
                    child: Align(
                      alignment: Alignment.topCenter,
                      heightFactor: 0.6,
                      widthFactor: 0.6,
                      child: Image.asset(
                        'images/artboard-2.png',
                        scale: 2.0,

                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:9.0, top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,



                      children: <Widget>[
                        Text('all things charmaine', style:kPostTitleTextStyle),
                        Text('last post 1 minute ago by charmaine',style: kPostTimeTextStyle),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Text('general',
                style: kSubHeadingTextStyle
                 ),
            SizedBox(
              height: 18.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return TopicScreen();
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
                      heightFactor: 0.75,
                      widthFactor: 0.7,
                      child: Image.asset(
                        'images/brush.jpg',
                        scale: 38.0,

                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:9.0, top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,


                      children: <Widget>[
                        Text('beauty', style:kPostTitleTextStyle),
                        Text('last post 1 minute ago by charmaine',style: kPostTimeTextStyle)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18.0,
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
                      heightFactor: 0.65,
                      widthFactor: 0.6,
                      child: Image.asset(
                        'images/beach.jpg',
                        scale: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:9.0, top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,


                      children: <Widget>[
                        Text('life & advice', style:kPostTitleTextStyle),
                        Text('last post 1 minute ago by charmaine',style: kPostTimeTextStyle)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18.0,
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
                      alignment: Alignment.centerLeft,
                      heightFactor: 0.3,
                      widthFactor: 0.6,
                      child: Image.asset(
                        'images/faceheadshot.jpg',
                        scale: 23.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:9.0, top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,


                      children: <Widget>[
                        Text('fashion', style:kPostTitleTextStyle),
                        Text('last post 1 minute ago by charmaine',style:kPostTimeTextStyle)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18.0,
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
                      alignment: Alignment.centerRight,
                      heightFactor: 0.65,
                      widthFactor: 0.6,
                      child: Image.asset(
                        'images/Chicago-Illinois.jpg',
                        scale: 16.0,
                      ),
                    ),
                  ),
                  Padding(
                      padding:  EdgeInsets.only(left:9.0, top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,


                      children: <Widget>[
                        Text('black ink crew chicago', style:kPostTitleTextStyle),
                        Text('last post 1 minute ago by charmaine',style: kPostTimeTextStyle)
                      ],
                    ),
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
