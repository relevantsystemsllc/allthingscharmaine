import 'package:allthingscharmaine/core/model/social.dart';
import 'package:allthingscharmaine/core/model/socialPlatform.dart';
import 'package:allthingscharmaine/core/services/API.dart';
import 'package:allthingscharmaine/locator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SocialVM with ChangeNotifier{
  Api _api = locator<Api>();
  List<SocialPlatform> _socialPlatforms;
  List<SocialPlatform> _socialPlatform;

  Future<List<Social>> fetchSocial(String path) async {
       List<Social> social;
    var result = await _api.getDataCollection("/social/$path/content");
    social = result.documents
        .map((doc) => Social.fromMap(doc.data, documentRef:  "/social/$path/content/${doc.documentID}"))
        .toList();
    return social;
  }

  Future<List<SocialPlatform>> fetchSocialPlatforms() async {
    var result = await _api.getDataCollection("/social");
      _socialPlatform =  await Future.wait(result.documents
        .map((doc) async => SocialPlatform.fromMap(doc.data, documentRef:  doc.documentID,social: await fetchSocial(doc.documentID)))
        .toList());
    return _socialPlatform;
  }



     Future<bool> submitReply(String reply,String path,String uID) async{
    bool status=false;
       Map<String, dynamic> toJson() {
         final Map<String, dynamic> data = new Map<String, dynamic>();
         data["reply"] = reply;
         data["createdAt"] = Timestamp.now();
         data["user"] = uID;
         return data;
       }
       await _api.addDocument('$path/replies', toJson()).timeout(Duration(seconds:10)).whenComplete(()=>status=true).catchError((error){
        print("doc save error");
        print(error);
      });
       return status;
     }

}



