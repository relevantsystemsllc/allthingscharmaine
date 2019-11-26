import 'package:flutter/material.dart';
import 'package:allthingscharmaine/utils/arc_clipper.dart';


class Base extends StatelessWidget {
  final Widget body;
  final int topFlex;
  final Color color;


  Base({this.body,@required this.topFlex,this.color});

  Widget topHalf(BuildContext context) {
    return new Flexible(
      flex: topFlex,
      child: ClipPath(
        clipper: new ArcClipper(),
        child: new Container(
              decoration: new BoxDecoration(
                  color: color??Colors.green[200]),
            ),

      ),
    );
  }

  final bottomHalf = new Flexible(
    flex: 3,
    child: new Container(color: Colors.white),
  );

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[topHalf(context), bottomHalf],
      mainAxisSize: MainAxisSize.min,
    );
  }
}
