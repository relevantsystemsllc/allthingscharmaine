import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Social{
  final String image;
  final String author;
  final String info;
  final DateTime time;
  final String header;
  final String content;
  final String authorImage;
  final String documentRef;

  Social({this.author,this.image,this.info,this.time,this.header,this.content,this.documentRef,this.authorImage});

 Social.fromMap(Map<dynamic, dynamic> map, {this.documentRef})
      : image = '${UIData.storage}${map["imageUrl"]}',
        authorImage = '${UIData.storage}${map["authorImage"]}',
        author = map["author"],
        info = map["information"],
        time = (map["createdAt"]as Timestamp).toDate(),
        header = map["title"],
        content = map["content"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["imagUrl"] = image;
    data["authorImage"] = image;
    data["author"] = author;
    data["information"] = info;
    data["createdAt"] = time;
    data["title"] = header;
    data["content"] = content;

    return data;
  }

}