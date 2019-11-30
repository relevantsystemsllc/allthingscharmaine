import 'package:allthingscharmaine/core/viewmodels/userviewmodel.dart';
import 'package:allthingscharmaine/ui/screens/signupscreens/pick_photo_screen.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/custom_appbar.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_screen.dart';

class PasswordRegScreen extends StatefulWidget {
  @override
  _PasswordRegScreenState createState() => _PasswordRegScreenState();
}

class _PasswordRegScreenState extends State<PasswordRegScreen> {
  String password, confirmPassword;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserViewModel>(context);
    return Scaffold(
      key: _scaffoldKey,
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CustomAppbar(istrue: false, title: "create a password"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      controller: null,
                      onSaved: (input) => password = input,
                      validator: (value) {
                        if (value.isEmpty || value.length < 6) {
                          return "Please enter your password";
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
                      onSaved: (input) => confirmPassword = input,
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty || value.length < 6) {
                          return "Please enter your password again";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "repeat password"),
                    ),
                  ),
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
                          // final snackBar =SnackBar(content: Text("passwords don't match"));
                          if (_formkey.currentState.validate()) {
                            _formkey.currentState.save();
                            if (password == confirmPassword) {
                              userProvider.addPassword(password);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PickPhotoScreen()));
                            } else {
                              _displaySnackBar(context);
                            }
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

  _displaySnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text("passwords don't match"),
      duration: Duration(seconds: 1),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
