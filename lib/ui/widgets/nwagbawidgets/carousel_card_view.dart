import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final String time;
  final String text;
  const CarouselCard({@required this.time, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      // height: 390,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: new BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
              child: Image.asset(
                "assets/girlinkitchen.png",
                fit: BoxFit.fitWidth,
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,2)  ,
              child: Text("9:59"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,0.0,16.0,8)  ,
              child: Text("Charmaine Neque porto quisquam est qui dolorem",style: TextStyle(fontSize: 13, color: Colors.grey),),
            ),

            // Charmaine Neque porto quisquam est qui dolorem
          ],
        ),
      ),
    );
  }
}
