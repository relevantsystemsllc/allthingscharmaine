import 'package:flutter/material.dart';

class CharmaineRadio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      height: 350,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "charmaine radio",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ClipRRect(
              borderRadius: new BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                alignment: Alignment.center,  
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/beautiful-black-girl.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
               
              ),
            ),
          ),
        ],
      ),
    );
  }
}
