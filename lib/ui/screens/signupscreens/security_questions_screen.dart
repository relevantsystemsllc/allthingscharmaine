import 'package:allthingscharmaine/core/viewmodels/loginviewmodel.dart';
import 'package:allthingscharmaine/core/viewmodels/userviewmodel.dart';
import 'package:allthingscharmaine/ui/screens/alertscreens/success_screen.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/custom_appbar.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_screen.dart';

class SecurityQuestionScreen extends StatefulWidget {
  @override
  _SecurityQuestionScreenState createState() => _SecurityQuestionScreenState();
}

class _SecurityQuestionScreenState extends State<SecurityQuestionScreen> {
  final _formkey = GlobalKey<FormState>();
  String firstAnswer, secAnswer;
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserViewModel>(context);
    final loginProvider = Provider.of<LoginViewmodel>(context);
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  CustomAppbar(
                    istrue: false,
                    title: "security question",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      onSaved: (input) => firstAnswer = input,
                      obscureText: false,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please give an answer";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: "what's the name of your dog?"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      onSaved: (input) => secAnswer = input,
                      obscureText: false,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please give an answer";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: "who is your favorite artist?"),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Text(
                          "Skip",
                          style: TextStyle(color: MyColors().pinkInactive),
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                        },
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Text("next",
                            style: TextStyle(color: MyColors().pinkActive)),
                        onTap: () {
                          if (_formkey.currentState.validate()) {
                            _formkey.currentState.save();
                            userProvider.addSecurityAnswers(
                                firstAnswer, secAnswer);
                            loginProvider.signUpUserNSaveData();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SuccessScreen(),
                              ),
                            );
                          }
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
