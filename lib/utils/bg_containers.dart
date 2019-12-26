import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

import 'bg_clip_path.dart';

class Clipbody1 extends StatelessWidget {
  final Color myColor;
  const Clipbody1({@required this.myColor});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper1(),
      child: Container(
        width: double.infinity,
        color: myColor,
      ),
    );
  }
}

class Clipbody2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper2(),
      child: Container(color: Color.fromRGBO(251, 235, 236, 1)),
    );
  }
}

class CurveContainer extends StatelessWidget {
  final Color myColor;
  const CurveContainer({@required this.myColor});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurveContainerClippath(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: myColor,
      ),
    );
  }
}

class TopContainer extends StatelessWidget {
  final Color myColor;
  const TopContainer({@required this.myColor});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: myColor),
      ),
      clipper: TopContainerWaveClipper(),
    );
  }
}

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Color.fromRGBO(253, 234, 236, 1)),
      ),
      clipper: BottomContainerWaveClipper(),
    );
  }
}

class CurveProfileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipPath(
      clipper: CurveProfileContainerClipPath(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: MyColors().pinkActive),
      ),
    );
  }
}

class SecondCurveContainer extends StatelessWidget {
  final Color myColor;

  const SecondCurveContainer({@required this.myColor});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SecondCurveContainerClipPath(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: myColor),
      ),
    );
  }
}

class FirstCurveContainer extends StatelessWidget {
  final Color myColor;
  const FirstCurveContainer({@required this.myColor});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: FirstCurveContainerClipPath(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: myColor),
      ),
    );
  }
}

class FirstProfileCurveContainer extends StatelessWidget {
  final Color myColors;
  const FirstProfileCurveContainer({@required this.myColors});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipPath(
      clipper: FirstProfileCurveContainerClipPath(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: myColors),
      ),
    );
  }
}

class SecondProfileCurveContainer extends StatelessWidget {
  final Color myColors;
  const SecondProfileCurveContainer({@required this.myColors});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SecondProfileCurveContainerClipPath(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: myColors),
      ),
    );
  }
}
