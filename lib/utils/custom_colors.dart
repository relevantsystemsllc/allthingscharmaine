import 'package:allthingscharmaine/model/event.dart';
import 'package:flutter/material.dart';

class CustomColors {
  static const Color TITLE_COLOR = Color(0xff656B6E);
  static const Color TEXT_COLOR = Color(0xff8E8E93);
  static const Color TITLE_EVENT_COLOR = Color(0xff515C6F);
}

class Data {
  static List<Event> getEventData() {
    List<Event> data = [];
    data.add(Event(
      id: 1,
      image: "assets/artboard–3.png",
      date: "January 18, 2019",
      title: "Charmaine Neque porro quisquam est qui dolorem .",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.",
    ));
    data.add(Event(
      id: 2,
      image: "assets/artboard–4.png",
      title: "Charmaine Neque porro quisquam est qui dolorem .",
      date: "January 18, 2019",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.",
    ));
    data.add(Event(
      id: 2,
      image: "assets/artboard.png",
      title: "Charmaine Neque porro quisquam est qui dolorem .",
      date: "January 18, 2019",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.",
    ));
    return data;
  }
}
