import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/carousel_view.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/charmaine_radio.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/charmaine_tv.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/custom_home_appbar.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/forum.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/press_view.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/qa_charmaine_view.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/shop_view.dart';
import 'package:allthingscharmaine/utils/bg_containers.dart';
import 'package:allthingscharmaine/utils/imageClipper.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

class HomeTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: <Widget>[
        CurveContainer(
          myColor: MyColors().pinkActive,
        ),
        ListView(
          children: <Widget>[
            CustomHomeAppbar(
              height: 10,
              bgColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 16),
              child: Row(
                children: <Widget>[
                  Spacer(),
                  ClipOval(
                      clipper: ImageClipper(),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://pbs.twimg.com/media/EGJJnGaVAAcbGch?format=jpg&name=small"),
                        backgroundColor: Colors.transparent,
                      ))
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "discover\nall things\ncharmaine",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            CarouselViews(),
            CharmaineTV(),
            ShopViewWidget(),
            CharmaineRadio(),
            QACharmaineView(),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "press",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            PressView(),
            Forum()
          ],
        ),
      ]),
    );
  }
}
