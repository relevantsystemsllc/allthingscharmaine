import 'package:allthingscharmaine/ui/screens/alertscreens/confirmation_screen.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final _formKey = GlobalKey<FormState>();
  String _addressline1, _addressline2, _city, _state, _zip;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("cart"),
        iconTheme: IconThemeData(
          color: CustomColors.TITLE_COLOR,
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/notification.png'),
            tooltip: 'Notification',
            onPressed: () {},
          ),
        ],
      ),
      body: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              // CustomCartAppbar(
              //   height: 10,
              //   bgColor: Colors.black,
              //   title: "cart",
              // ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "address",
                    style: TextStyle(
                        fontSize: 30.0,
                        color: MyColors().pinkActive,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 16, bottom: 40, left: 16, right: 16),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: null,
                      onSaved: (input) => _addressline1 = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your first address";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "address line 1"),
                    ),
                    TextFormField(
                      controller: null,
                      onSaved: (input) => _addressline2 = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your second address";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "address line 2"),
                    ),
                    TextFormField(
                      controller: null,
                      onSaved: (input) => _city = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your city";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "city"),
                    ),
                    TextFormField(
                      controller: null,
                      onSaved: (input) => _state = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your state/province/region";
                        }
                        return null;
                      },
                      decoration:
                          InputDecoration(labelText: "state/province/region"),
                    ),
                    TextFormField(
                      controller: null,
                      onSaved: (input) => _zip = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your zip/postal code";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "zip/postal code"),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 50.0,
                          child: FlatButton(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ConfirmationScreen()));
                              }
                            },
                            child: Text(
                              "next",
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
              ),
            ],
          )),
    );
  }
}
