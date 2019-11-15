import 'package:allthingscharmaine/model/event.dart';
import 'package:flutter/material.dart';

class CustomColors {
  static const Color TITLE_COLOR = Color(0xff656B6E);
  static const Color TEXT_COLOR = Color(0xff8E8E93);
}

class Data {
  static List<Event> getEventData() {
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
    data.add(Event(
      id: 2,
      image: "assets/artboard.png",
      title: "Event 2",
      description: "Charmaine Neque porro quisquam est qui dolorem .",
    ));
    return data;
  }
}
