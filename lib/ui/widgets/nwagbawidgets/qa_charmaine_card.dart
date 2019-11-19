import 'package:flutter/material.dart';

class QACharmanineCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Image.asset("assets/finegirl.png",height: 40,width: 40,fit: BoxFit.fitHeight,),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("what's your favorite movie"),
                Text("devil wears prada")
              ],
            )
          ],
        ),
      ),
    );
  }
}
