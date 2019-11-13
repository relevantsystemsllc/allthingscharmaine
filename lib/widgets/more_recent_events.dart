import 'package:allthingscharmaine/model/event.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:allthingscharmaine/widgets/press_event_item.dart';
import 'package:flutter/material.dart';

class MoreRecentEvents extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List listData = getEventData();
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(right: 2.0),
                        child: Text('most recent events',
                            style: TextStyle(
                              color: CustomColors.TITLE_COLOR,
                              fontSize: 20.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ))),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12.0,
                      color: CustomColors.TITLE_COLOR,
                    )
                  ]),
                ),
                Text('view all',
                    style: TextStyle(
                      color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                      fontSize: 12.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            PressEventItem(listData[0]),
            SizedBox(height: 15, ),
            PressEventItem(listData[1]),
            SizedBox(
              height: 40,
            ),
          ],
        ));
  }

  List<Event> getEventData() {
    List<Event> data = [];
    data.add(Event(
      id: 1,
      image: "assets/artboard–3.png",
      title: "Event 1",
      description: "Charmaine Neque porro quisquam est qui dolorem .",
    ));
    data.add(Event(
      id: 2,
      image: "assets/artboard–4.png",
      title: "Event 2",
      description: "Charmaine Neque porro quisquam est qui dolorem .",
    ));
    return data;
  }
}
