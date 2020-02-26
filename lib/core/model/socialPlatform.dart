import 'package:allthingscharmaine/core/model/social.dart';

class SocialPlatform {
  final String platform;
  final List<Social> social;
  final String documentRef;

   SocialPlatform({this.platform,this.social,this.documentRef});

  SocialPlatform.fromMap(Map<dynamic, dynamic> map, {this.documentRef,this.social})
      : platform = map["name"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["name"] = platform;
    data["content"] = social;
    return data;
  }
}