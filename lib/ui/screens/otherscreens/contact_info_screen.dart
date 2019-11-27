import 'package:allthingscharmaine/ui/screens/otherscreens/pick_card_sceen.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/custom_cart_appbar.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

class ContactInfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContactInfoScreen();
  }
}

class _ContactInfoScreen extends State<ContactInfoScreen> {
  String _name, _email;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // var userProvider = Provider.of<UserViewModel>(context);
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CustomCartAppbar(
                    height: 10,
                    bgColor: Colors.black,
                    title: "cart",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      onSaved: (input) => _name = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "name",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: null,
                      onSaved: (input) => _email = input,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "email",
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
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Text("next",
                            style: TextStyle(color: MyColors().pinkActive)),
                        onTap: () {
                          if (_formkey.currentState.validate()) {
                            _formkey.currentState.save();
                            // userProvider.addnames(_firstname, _lastname);
                            print(_name + _email);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PickCardScreen(),
                                ));
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
