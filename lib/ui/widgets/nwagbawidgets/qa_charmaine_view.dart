
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

import 'qa_charmaine_card.dart';

class QACharmaineView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      height: 190,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "q/a by charmaine ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                "view all",
                style: TextStyle(color: MyColors().pinkInactive),
              )
            ],
          ),
          QACharmanineCard(),
          QACharmanineCard()
        ],
      ),
    );
  }
}
