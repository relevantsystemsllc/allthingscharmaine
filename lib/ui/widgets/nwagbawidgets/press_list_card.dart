import 'package:flutter/material.dart';

class PressCardList extends StatelessWidget {
  final String imagelink;
  final String firstText;
  final String secText;
  const PressCardList({@required this.imagelink,@required this.firstText, @required this.secText});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 350,
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
                imagelink,
                fit: BoxFit.fitWidth,
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,2)  ,
              child: Text(firstText),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,0.0,16.0,8)  ,
              child: Text(secText,style: TextStyle(fontSize: 13, color: Colors.grey),),
            ),

            // Charmaine Neque porto quisquam est qui dolorem
          ],
        ),
      ),
    );
  }
}