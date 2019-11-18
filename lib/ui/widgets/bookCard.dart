import 'package:flutter/material.dart';

import 'button.dart';

class BookCard extends StatelessWidget {
  final String cost;
  final String info;
  final String action;
  final String category;
  final Color color;

  BookCard(
      {@required this.cost,
      @required this.info,
      this.action,
      @required this.category,
      @required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Padding(
              child: Card(
                  color: Colors.white,
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              padding: EdgeInsets.only(top: 25.0, right: 15.0)),
          Column(children: [
            Align(
                child: CircleAvatar(
                    backgroundColor: Colors.green[200],
                    maxRadius: 25.0,
                    child: Text("\$${cost ?? '24.99'}",
                        style: TextStyle(color: Colors.white, fontSize: 10.0))),
                alignment: Alignment.topRight),
            SizedBox(height: 5.0),
            Text(category ?? "eBook",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 3.0),
            Text(info ?? "PDF, EBUP + Kindle",
                style: TextStyle(fontSize: 12.0, color: Colors.black54)),
            SizedBox(height: 10.0),
            Button(
                color: color ?? Colors.deepOrange[200],
                action: action ?? "buy",
                textColor: Colors.white)
          ])
        ],
        alignment: Alignment.topCenter,
        fit: StackFit.expand,
      ),
      height: 165.0,
      width: 250.0,
    );
  }
}
