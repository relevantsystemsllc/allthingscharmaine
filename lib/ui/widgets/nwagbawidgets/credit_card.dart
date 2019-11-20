import 'package:allthingscharmaine/utils/margin_utils.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/round_checkbox.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreditCardWidget extends StatelessWidget {
  bool istrue = false;
  CreditCardWidget({Key key, @required this.istrue});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
      child: Card(
        margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 5.0),
        elevation: 2,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 230,
          decoration: BoxDecoration(color: MyColors().pinkActive),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/visalogo.svg",
                          height: 20,
                          width: 20,
                        ),
                        Spacer(),
                        RoundCheckbox(istrue:istrue)
                      ],
                    ),
                  ),
                  customYMargin(30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("1200 00",
                            style: TextStyle(
                                fontFamily: 'OCRAEXT',
                                color: Colors.white,
                                fontSize: 25)),
                      ],
                    ),
                  ),
                  customYMargin(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              " Card Holder".toUpperCase(),
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 10),
                            ),
                            Text(
                              "Nick Bey",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Expires".toUpperCase(),
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 10),
                            ),
                            Text(
                              "11 / 21",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
