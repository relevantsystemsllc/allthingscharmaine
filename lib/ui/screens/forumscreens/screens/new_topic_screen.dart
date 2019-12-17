import 'package:flutter/material.dart';
import 'package:allthingscharmaine/ui/widgets/colewidgets/constants.dart';
import 'package:allthingscharmaine/ui/screens/forumscreens/screens/post_screen.dart';


class NewTopicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xff656B6E),
        ),
        backgroundColor: Colors.transparent,
//        title: Text('topics', style: kAppBarTextStyle),
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
            EdgeInsets.only(left: 34.0, top: 19.0, bottom: 34.0, right: 34.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'new topic',
                  style: kHeadingTextStyle,
                ),
                SizedBox(
                  height: 33.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'example topic',
                      hintStyle: kPlaceholderTextStyle,
                      labelText: 'title',
                      labelStyle: kGeneralBodyTextStyle,
                      border: UnderlineInputBorder()),
                ),
                SizedBox(
                  height: 33.0,
                ),
                Text(
                  'images',
                  style: kGeneralBodyTextStyle,
                ),
                SizedBox(
                  height: 13.0,
                ),
                Container(
                  height: 82.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      OutlineButton(
                        borderSide: BorderSide(
                          width: 1.0,
                          color: Color(0xFFED9B9D),
                        ),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 8.0),
                          child: Column(
                            children: <Widget>[
                              OutlineButton(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFED9B9D),
                                ),
                                onPressed: () {},
                                shape: CircleBorder(),
                                child: Icon(

                                  Icons.add,


                                  semanticLabel: 'Add',
                                  color: Color(0xFFED9B9D),
                                ),


                              ),
                              Text('Add', style: kPostTimeTextStyle,)
                            ],
                          ),
                        ),

                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(11.0)),
                        child: Align(
                          alignment: Alignment.topCenter,
                          heightFactor: 1.0,
                          widthFactor: 1.0,
                          child: Image.asset(
                            'assets/eyebrush.jpg',
                            scale: 2.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(11.0)),
                        child: Align(
                          alignment: Alignment.centerRight,
                          heightFactor: 1.0,
                          widthFactor: 1.0,
                          child: Image.asset(
                            'assets/bloom.jpg',
                            scale: 2.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 41.0,
                ),
                Text(
                  'text',
                  style: kGeneralBodyTextStyle,
                ),
                SizedBox(height: 188.0),
                TextField(
                  decoration: InputDecoration(border: UnderlineInputBorder()),
                ),
                SizedBox(
                  height: 34.0,
                ),
                CheckBoxInRow(),
                SizedBox(
                  height: 44.0,
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
                          return SubCategoryScreen();
                        })
                    );

                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(17.0),
                      child: Text(
                        'done',
                        style: TextStyle(fontSize: 11.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CheckBoxInRow extends StatefulWidget {
  @override
  _CheckBoxInRowState createState() => _CheckBoxInRowState();
}

class _CheckBoxInRowState extends State<CheckBoxInRow> {
  bool pubVal = true;
  bool priVal = false;

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[



        Checkbox(


          activeColor: Color(0xFFED9B9D),
          value: pubVal,
          onChanged: (bool value) {
            setState(() {
              pubVal = value;
            });
          },
        ),
        Text("public"),
        SizedBox(
        width: 30.0,
        ),

        Checkbox(
          activeColor: Color(0xFFED9B9D),
          value: priVal,
          onChanged: (bool value) {
            setState(() {
              priVal = value;
            });
          },
        ), //
      Text("private"),

      ],
    );
  }
}
