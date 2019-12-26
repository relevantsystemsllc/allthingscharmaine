import 'package:allthingscharmaine/ui/screens/alertscreens/profile_edited_alert_screen.dart';
import 'package:allthingscharmaine/utils/bg_containers.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:allthingscharmaine/utils/imageClipper.dart';
import 'package:allthingscharmaine/utils/margin_utils.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: MyColors().pinkActive,
        centerTitle: true,
        title: Text(
          "my account",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: CustomColors.TITLE_COLOR,
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              'assets/notification.png',
              color: Colors.white,
            ),
            tooltip: 'Notification',
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          CurveProfileContainer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formkey,
              child: ListView(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "my profile\n",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  customYMargin(50),
                  Align(
                    alignment: Alignment.center,
                    child: ClipOval(
                      clipper: ImageClipper(),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                            "https://pbs.twimg.com/media/EGJJnGaVAAcbGch?format=jpg&name=small"),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                  customYMargin(20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      // onSaved: (input) => creditCardType = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please enter your name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "name"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      // onSaved: (input) => creditCardType = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please enter your email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "email"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      // onSaved: (input) => creditCardType = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please enter your password";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "password"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      // onSaved: (input) => creditCardType = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please repeat your password";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "repeat password"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      // onSaved: (input) => creditCardType = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please enter your address line 1";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "address line 1"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      // onSaved: (input) => creditCardType = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please enter your address line 2";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "address line 2"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      // onSaved: (input) => creditCardType = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please enter your city";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "city"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      // onSaved: (input) => creditCardType = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please enter your state/province/region";
                        }
                        return null;
                      },
                      decoration:
                          InputDecoration(labelText: "state/province/region"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      // onSaved: (input) => creditCardType = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please enter your zip/postal code";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "zip/postal code"),
                    ),
                  ),
                  customYMargin(10),
                  SwitchListTile(
                    title: Text(
                      'enable notifications',
                      style: TextStyle(color: MyColors().pinkActive),
                    ),
                    value: false,
                    onChanged: (bool value) {
                      setState(() {
                        // _lights = value;
                      });
                    },
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
                                        builder: (context) =>
                                            ProfileEditedAlertBackground()));
                              },
                              child: Text(
                                "done",
                                style: TextStyle(color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(color: MyColors().pinkActive),
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
                              onPressed: () {},
                              child: Text(
                                "change photo",
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
                  customYMargin(10)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
