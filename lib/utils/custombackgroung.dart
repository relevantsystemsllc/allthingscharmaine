import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // paint.color = Colors.blue;
    // var rect = Rect.fromLTRB(0, 0, size.width, size.height);
    // canvas.drawRect(rect, paint);

    paint.color = Colors.grey;
    var secpath = Path();
    secpath.lineTo(0, size.height /1.5);
    // secpath.quadraticBezierTo(size.width * 0.2, size.height*0.5,0, size.height / 1.9);
    secpath.lineTo(size.width * 1.2, 0);
    secpath.close();
    canvas.drawPath(secpath, paint);

    paint.color = Colors.yellow;
    var path = Path();
    // path.quadraticBezierTo(size.width * 0.2, size.height*0.5,0, size.height / 1.9);
    path.lineTo(0, size.height / 2);
    path.lineTo(size.width , 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class SecondBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
