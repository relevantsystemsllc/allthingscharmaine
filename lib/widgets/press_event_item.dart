import 'package:allthingscharmaine/model/event.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class PressEventItem extends StatelessWidget {
  final Event event;

  PressEventItem(this.event);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
        height: 211.0,
        width: 302,
        child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    event?.image,
                    height: 133.0,
                    width: 302,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 17.0, right: 17.0, top: 15.0, bottom: 10.0),
                    child: Text(
                      event?.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: CustomColors.TEXT_COLOR,
                        fontSize: 13.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ])));
  }
}
