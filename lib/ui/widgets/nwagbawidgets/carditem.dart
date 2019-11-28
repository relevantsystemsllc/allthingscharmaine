import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      height: 100,
      child: Row(
        children: <Widget>[
          Image.asset("assets/approns 1.png"),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 30),
            child: Column(
              children: <Widget>[
                Text("Wakanda"),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          border: Border.all(color: MyColors().pinkActive),
                          shape: BoxShape.circle),
                      child: Text(
                        " - ",
                        
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 4,right: 4),
                      child: Text(" 3 "),
                    ),
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          border: Border.all(color: MyColors().pinkActive),
                          shape: BoxShape.circle),
                      child: Text(
                        " + ",
                        
                      ),
                    ),
                  
                  ],
                )
              ],
            ),
          ),

          Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text("\$35"),
          )
        ],
      ),
    );
  }
}
