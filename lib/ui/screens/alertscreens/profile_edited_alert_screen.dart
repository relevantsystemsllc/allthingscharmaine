import 'package:allthingscharmaine/utils/bg_containers.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

class ProfileEditedAlertBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FirstProfileCurveContainer(myColors: MyColors().greyBg,),
          SecondProfileCurveContainer(myColors: MyColors().pinkActive,),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height / 12),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                //the container bellow is the circle with the tick inside
                Container(
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height / 40),
                  width: MediaQuery.of(context).size.width / 4.3,
                  height: MediaQuery.of(context).size.width / 4.3,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 4),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.width / 8,
                    ),
                  ),
                ),

                Text(
                  'great',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 80),

                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Text('now you can enter the data to login',
                      style: TextStyle(color: Colors.white60, fontSize: 20),
                      textAlign: TextAlign.center),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 6),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Color.fromRGBO(236, 154, 156, 1),
                          onPressed: () {
                            print("but pressed");
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             MyProfileBackground()));
                          },
                          child: Text(
                            "back",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}