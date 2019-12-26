import 'package:allthingscharmaine/ui/screens/otherscreens/order_history.dart';
import 'package:allthingscharmaine/utils/bg_containers.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConfirmationScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        BottomContainer(),
        TopContainer(
          myColor: MyColors().pinkActive,
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                SvgPicture.asset("assets/success.svg"),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "confirmation",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "now you can view your order\n        in order history",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Container(
                          height: 50.0,
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OrderHistory()));
                            },
                            child: Text(
                              "my order",
                              style: TextStyle(
                                color: MyColors().pinkActive,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: BorderSide(color: Colors.white),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
