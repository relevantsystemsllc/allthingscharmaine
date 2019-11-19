import 'package:allthingscharmaine/utils/margin_utils.dart';
import 'package:allthingscharmaine/core/viewmodels/loginviewmodel.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/custom_appbar.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  String email,password;
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<LoginViewmodel>(context);
    // TODO: implement build
    return Scaffold(
      
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  CustomAppbar(
                    istrue: false,
                    title: "welcome back",
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("login with"),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 50.0,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: SvgPicture.asset(
                                "assets/facebooklogo.svg",
                                color: Colors.white,
                                height: 20,
                                width: 20,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side:
                                    BorderSide(color: MyColors().facebookBlue),
                              ),
                              color: MyColors().facebookBlue,
                            ),
                          ),
                        ),
                      ),
                      customXMargin(5),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 50.0,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: SvgPicture.asset(
                                "assets/twitterlogo.svg",
                                color: Colors.white,
                                height: 20,
                                width: 20,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(color: MyColors().twitterBlue),
                              ),
                              color: MyColors().twitterBlue,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("or"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      onSaved: (input)=> email = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "email"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      controller: null,
                      onSaved: (input)=>password = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your password";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "password"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 16.0, 0.0, 16.0),
                      child: InkWell(
                        onTap: ()=> print("Do something!!"),
                        child: Text(
                          "i forgot my password?",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 50.0,
                          child: FlatButton(
                            onPressed: () {
                              if(_formkey.currentState.validate()){
                                _formkey.currentState.save();
                                userProvider.signInUser(email, password);

                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));


                              }
                              
                            },
                            child: Text(
                              "login",
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
                ],
              ),
              // Positioned(
              //   left: 0,
              //   right: 0,
              //   bottom: 0,
                
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
