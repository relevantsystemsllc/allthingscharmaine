import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

import 'forum_item.dart';

class Forum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "forum ",
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
                  "view all",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              )
            ],
          ),
          ForumItem(),
          ForumItem(),
          ForumItem()
        ],
      ),
    );
  }
}
