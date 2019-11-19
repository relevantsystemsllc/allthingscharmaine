
import 'package:allthingscharmaine/core/viewmodels/userviewmodel.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/custom_appbar.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'create_password_reg_screen.dart';

class EmailRegScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EmailRegScreenState();
  }
}

class _EmailRegScreenState extends State<EmailRegScreen> {
  String _email;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserViewModel>(context);
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
                    title: "your email?",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onSaved: (input) => _email = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "email"),
                    ),
                  ),
                  // Spacer(),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Text(
                          "Skip",
                          style: TextStyle(color: MyColors().pinkInactive),
                        ),
                        onTap: null,
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
                            userProvider.addEmail(_email);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PasswordRegScreen()));
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
