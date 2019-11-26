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
          Padding(
            padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
            child: Row(
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
                InkWell(
                  onTap: () {},
                  child: Text(
                    "view all"
                    ,style: TextStyle(color: Colors.grey[700]),
                  ),
                )
              ],
            ),
          ),
          QACharmanineCard(),
          QACharmanineCard()
        ],
      ),
    );
  }
}
