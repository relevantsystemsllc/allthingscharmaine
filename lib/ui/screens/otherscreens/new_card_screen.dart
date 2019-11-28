
import 'package:allthingscharmaine/ui/screens/otherscreens/address_screen.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/credit_card.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/custom_appbar.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/round_checkbox.dart';
import 'package:allthingscharmaine/utils/margin_utils.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

class NewcardScreen extends StatefulWidget {
  @override
  _NewcardScreenState createState() => _NewcardScreenState();
}

class _NewcardScreenState extends State<NewcardScreen> {
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  CustomAppbar(
                    istrue: false,
                    title: "payment",
                  ),
                  CreditCardWidget(
                    istrue: defaultCard,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      onSaved: (input) => creditCardType = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your card type";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "credit card"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      onSaved: (input) => creditCardNumber = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your card number";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "number"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      onSaved: (input) => creditCardHolderName = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your card holder name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "card holder name",
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 0.0),
                        child: Text("expiray date",
                            style: TextStyle(color: MyColors().pinkInactive)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: Icon(Icons.keyboard_arrow_down),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: MyColors().pinkActive),
                          underline: Container(
                            height: 2,
                            width: 10,
                            color: MyColors().pinkActive,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                              creditCardExpiryMonth = dropdownValue;
                            });
                          },
                          items: <String>[
                            '1',
                            '2',
                            '3',
                            '4',
                            '5',
                            '6',
                            '7',
                            '8',
                            '9',
                            '10',
                            '11',
                            '12'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value.toString(),
                              child: Text(value.toString()),
                            );
                          }).toList(),
                        ),
                        customXMargin(20),
                        DropdownButton<String>(
                          value: secDropdownValue,
                          icon: Icon(Icons.keyboard_arrow_down),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: MyColors().pinkActive),
                          underline: Container(
                            height: 2,
                            color: MyColors().pinkActive,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              secDropdownValue = newValue;
                              creditCardExpiryYear = secDropdownValue;
                            });
                          },
                          items: <String>[
                            '2020',
                            '2021',
                            '2022',
                            '2023',
                            '2024',
                            '2025',
                            '2026'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 16.0, 0.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        RoundCheckbox(
                          istrue: true,
                        ),
                        customXMargin(10),
                        Text('my default credit card')
                      ],
                    ),
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
                                if (_formkey.currentState.validate()) {
                                  _formkey.currentState.save();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AddressScreen()));
                                }
                              },
                              child: Text(
                                "done",
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
                ],
              ),
              customYMargin(30),
            ],
          ),
        ),
      ),
    );
  }
}
