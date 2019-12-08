import 'package:flutter/material.dart';

class CurveContainerClippath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height * 0.5);

// TODO: The wavy clipping magic happens here, between the bottom left and bottom right points.

// The bottom right point also isn't at the same level as its left counterpart,
// so we'll adjust that one too.
    var firstControlPoint = new Offset(size.width * 0.5, size.height * 0.7);
    var firstEndPoint = new Offset(size.width, size.height * 0.5);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class TopContainerWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(size.width / 1.7, 0.0);

    // an Endpoint is just like a path.lineTo

    //first quadraticBezier curve
    var firstControlPoint = Offset(size.width / 1.7, size.height / 40);
    var firstEndPoint = Offset(size.width / 1.55, size.height / 6);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    //second quadraticBezier curve
    var secondControlPoint = Offset(size.width / 1.4, size.height / 3.2);
    var secondEndPoint = Offset(size.width, size.height / 3);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    //path.lineTo(size.width, size.height/3);
    path.lineTo(size.width, size.height - size.height / 10);

    //third quadraticBezier curve
    var thridControlPoint =
        Offset(size.width - size.width / 25, size.height - size.height / 17);
    var thirdEndPoint = Offset(size.width - size.width / 6, size.height);
    path.quadraticBezierTo(thridControlPoint.dx, thridControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    //path.lineTo(size.width - size.width/6, size.height);
    path.lineTo(0.0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BottomContainerWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(size.width / 1.55, 0.0);

    // an Endpoint is just like a path.lineTo

    //first quadraticBezier curve
    var firstControlPoint = Offset(size.width / 1.52, size.height / 40);
    var firstEndPoint = Offset(size.width / 1.45, size.height / 8);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    //second quadraticBezier curve
    var secondControlPoint = Offset(size.width / 1.35, size.height / 4);
    var secondEndPoint = Offset(size.width, size.height / 3.9);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    //path.lineTo(size.width, size.height/3);
    path.lineTo(size.width, size.height - size.height / 10);

    //third quadraticBezier curve
    var thridControlPoint =
        Offset(size.width - size.width / 25, size.height - size.height / 17);
    var thirdEndPoint = Offset(size.width - size.width / 6, size.height);
    path.quadraticBezierTo(thridControlPoint.dx, thridControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    //path.lineTo(size.width - size.width/6, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 2.3);

    var firstControlPoint = Offset(31, 210);
    var firstEndpoint = Offset(34, 130);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    var secondControlPoint = Offset(60, 5);
    var secondEndpoint = Offset(270, 70);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    path.lineTo(size.width, size.height / 6);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0, size.height / 2.45);

    var firstControlPoint = Offset(40, 220);
    var firstEndpoint = Offset(50, 105);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    var secondControlPoint = Offset(60, 4);
    var secondEndpoint = Offset(270, 42);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    path.lineTo(size.width, size.height / 9.8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


class CurveProfileContainerClipPath extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height * 0.2);

// TODO: The wavy clipping magic happens here, between the bottom left and bottom right points.

// The bottom right point also isn't at the same level as its left counterpart,
// so we'll adjust that one too.
    var firstControlPoint = new Offset(size.width * 0.5, size.height * 0.4);
    var firstEndPoint = new Offset(size.width, size.height * 0.2);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class FirstCurveContainerClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height * 0.72);

// TODO: The wavy clipping magic happens here, between the bottom left and bottom right points.

// The bottom right point also isn't at the same level as its left counterpart,
// so we'll adjust that one too.
    var firstControlPoint = new Offset(size.width * 0.3, size.height * 0.82);
    var firstEndPoint = new Offset(size.width, size.height * 0.68);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, size.height * 0.7);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class SecondCurveContainerClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height * 0.7);

// TODO: The wavy clipping magic happens here, between the bottom left and bottom right points.

// The bottom right point also isn't at the same level as its left counterpart,
// so we'll adjust that one too.
    var firstControlPoint = new Offset(size.width * 0.35, size.height * 0.8);
    var firstEndPoint = new Offset(size.width, size.height * 0.7);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, size.height * 0.7);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class SecondProfileCurveContainerClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height * 0.72);

// TODO: The wavy clipping magic happens here, between the bottom left and bottom right points.

// The bottom right point also isn't at the same level as its left counterpart,
// so we'll adjust that one too.
    var firstControlPoint = new Offset(size.width * 0.3, size.height * 0.82);
    var firstEndPoint = new Offset(size.width, size.height * 0.6);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, size.height * 0.6);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class FirstProfileCurveContainerClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    
    var path = Path();
    path.lineTo(0.0, size.height * 0.7);

// TODO: The wavy clipping magic happens here, between the bottom left and bottom right points.

// The bottom right point also isn't at the same level as its left counterpart,
// so we'll adjust that one too.
    var firstControlPoint = new Offset(size.width * 0.35, size.height * 0.8);
    var firstEndPoint = new Offset(size.width, size.height * 0.7);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, size.height * 0.7);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    
    return false;
  }
}