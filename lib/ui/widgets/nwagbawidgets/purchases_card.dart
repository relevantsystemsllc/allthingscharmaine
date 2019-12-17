import 'package:flutter/material.dart';

class PurchaseCard extends StatelessWidget {
  final String imagePath;
  final String date;
  final int purchaseNumber;

  PurchaseCard({
    @required this.imagePath,
    @required this.date,
    @required this.purchaseNumber,
  });
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 200,
      width: screenSize,
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16, bottom: 8, top: 24),
              child: Text(
                "$date",
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    imagePath,
                    height: 100,
                    width: 100,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "#$purchaseNumber",
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(date,style: TextStyle(color: Colors.grey[400]),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
