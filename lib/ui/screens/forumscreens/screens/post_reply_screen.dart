import 'package:allthingscharmaine/ui/widgets/colewidgets/constants.dart';
import 'package:flutter/material.dart';


class PostReplyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xff656B6E),
        ),
        backgroundColor: Colors.transparent,
        title: Text('threads', style: kAppBarTextStyle),
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
        padding: EdgeInsets.only(left: 34.0, top: 19.0, bottom: 34.0, right: 34.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'reply',
              style: kHeadingTextStyle,

            ),
            SizedBox(
              height: 10.0,
            ),
            Card(

              elevation: 5.0,



              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 11.0, horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Text('What is your favourite perfume?', style: kSubPostTitleTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 10.0,
                          backgroundImage: AssetImage('assets/artboard-2.png'),
                        ),
                        Text(
                          'by Anna',
                          style: kPostTimeTextStyle,
                        ),
                        SizedBox(
                            width: 180.0
                        ),
                        Text('3 hours ago', style: kPostTimeTextStyle),
                      ],
                    ),

                  ],
                ),
              ),

            ),
            SizedBox(
              height: 23.0,
            ),
            Text('response', style: kGeneralBodyTextStyle,),
            SizedBox(
              height: 134.5,
            ),
            Row(
              children: <Widget>[
                Container(

                  width:280.0,
                  child: TextField(


                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 0.0),


                      border:UnderlineInputBorder(
                      )
                    ),
                  ),
                ),
                Icon(
                    Icons.attach_file, color: Color(0xFFC5CDD2),
                ),
                Icon(Icons.image, color: Color(0xFFC5CDD2)),
              ],
            ),

            SizedBox(
              height: 62.5,
            ),
            FlatButton(
              color: Color(0xFFED9B9D),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200.0),
              ),
              onPressed: () {

              },
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Text(
                    'send',
                    style: TextStyle(fontSize: 11.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
//
//suffixIcon: Icon(Icons.attach_file,color: Color(0xFFE6E6E6),),