import 'package:allthingscharmaine/ui/screens/otherscreens%20/address_screen.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/credit_card.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/custom_appbar.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/round_checkbox.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/utils/margin_utils.dart';
import 'package:page_indicator/page_indicator.dart';

import 'new_card_screen.dart';

class PickCardScreen extends StatefulWidget {
  @override
  _PickCardScreenState createState() => _PickCardScreenState();
}

class _PickCardScreenState extends State<PickCardScreen> {
  final _controller = PageController(initialPage: 0);
  final _formkey = GlobalKey<FormState>();
  String dropdownValue = '1';
  String secDropdownValue = '2020';
  String creditCardType,
      creditCardNumber,
      creditCardHolderName,
      creditCardExpiryMonth,
      creditCardExpiryYear;
  bool defaultCard = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                CustomAppbar(
                  istrue: false,
                  title: "payment",
                ),
                Container(
                  height: 250,
                  child: PageIndicatorContainer(
                    align: IndicatorAlign.bottom,
                    length: 2,
                    indicatorSpace: 10,
                    padding: EdgeInsets.only(top: 16.0),
                    shape: IndicatorShape.circle(size: 7.0),
                    indicatorColor: Colors.grey.shade200,
                    indicatorSelectorColor: MyColors().pinkInactive,
                    child: PageView(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CreditCardWidget(
                          istrue: defaultCard,
                        ),
                        CreditCardWidget(
                          istrue: defaultCard,
                        ),
                      ],
                    ),
                  ),
                ),
                customYMargin(60),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 50.0,
                          child: FlatButton(
                            onPressed: () {
                              if (_formkey.currentState.validate()) {
                                _formkey.currentState.save();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => NewcardScreen(),
                                    ));
                              }
                            },
                            child: Text(
                              "choose",
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: BorderSide(color: Colors.white),
                            ),
                            color: MyColors().pinkActive,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                customYMargin(10),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 50.0,
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddressScreen()));
                            },
                            child: Text(
                              "add another credit card",
                              style: TextStyle(color: MyColors().pinkActive),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: BorderSide(color: MyColors().pinkActive),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            customYMargin(30),
            // Positioned(
            //   right: 0,
            //   left: 0,
            //   bottom: 0,
            //   child: Row(
            //     children: <Widget>[
            //       Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: InkWell(
            //           child: Text(
            //             "Skip",
            //             style: TextStyle(color: MyColors().pinkInactive),
            //           ),
            //           onTap: null,
            //         ),
            //       ),
            //       Spacer(),
            //       Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: InkWell(
            //           child: Text("next",
            //               style: TextStyle(color: MyColors().pinkActive)),
            //           onTap: () {
            //             if (_formkey.currentState.validate()) {
            //               _formkey.currentState.save();

            //               // Navigator.push(
            //               //     context,
            //               //     MaterialPageRoute(
            //               //         builder: (context) =>
            //               //             SecurityQuestionScreen()));
            //             }
            //           },
            //         ),
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
