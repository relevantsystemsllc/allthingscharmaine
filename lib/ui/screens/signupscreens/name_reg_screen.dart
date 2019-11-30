
import 'package:allthingscharmaine/core/viewmodels/userviewmodel.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/custom_appbar.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'email_reg_screen.dart';
import 'login_screen.dart';

class NameRegScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NameRegScreen();
  }
}

class _NameRegScreen extends State<NameRegScreen> {
  String _firstname, _lastname;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserViewModel>(context);
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CustomAppbar(
                    istrue: true,
                    title: "what's your name?",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      onSaved: (input) => _firstname = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your first name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "first name",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      onSaved: (input) => _lastname = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your last name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "last name",
                      ),
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
                          "skip",
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
                          if(_formkey.currentState.validate()){
                            _formkey.currentState.save();
                            userProvider.addnames(_firstname, _lastname);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmailRegScreen()));
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
