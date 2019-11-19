import 'package:flutter/material.dart';

class ForumItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: new BorderRadius.all(Radius.circular(10.0)),
              child: Image.asset(
                "assets/finegirl.png",
                height: 60,
                width: 70,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("some textubinfvdinuvnfriub",style: TextStyle(fontWeight: FontWeight.w500),),
              Text("some text evibuhefbvuce vucveiuvecvu")
            ],
          )
        ],
      ),
    );
  }
}
