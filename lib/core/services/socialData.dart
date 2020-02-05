import 'package:allthingscharmaine/model/social.dart';
import 'package:allthingscharmaine/model/socialPlatform.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/material.dart';

class SocialData with ChangeNotifier{
  List<SocialPlatform> _socialPlatforms;

  static var _social = [
    Social(author: "Charmaine",image: "${UIData.storage}${UIData.commentHeader}",info: "Charmaine Charmaine lasdas faxcaz Charmaine lasdas faxcaz ",time: '4min',header: 'Charmaine Nesque \nporro quisquam est \nqui dolorem .',content: 'Lorem insulordolor et amot desin timi sin lidi Lorem insulordolor et amot desin timi sin lidiLorem insulordolor et amot desin timi sin lidi Lorem insulordolor et amot desin timi sin lidiLorem insulordolor et amot desin timi sin lidi Lorem insulordolor et amot desin timi sin lidiLorem insulordolor et amot desin timi sin lidi'),
    Social(author: "Charmaine",image: "${UIData.storage}${UIData.commentHeader}",info: "Charmaine Charmaine lasdas faxcaz Charmaine lasdas faxcaz ",time: '4min',header: 'Charmaine Nesque \nporro quisquam est \nqui dolorem .',content: 'Lorem insulordolor et amot desin timi sin lidi Lorem insulordolor et amot desin timi sin lidiLorem insulordolor et amot desin timi sin lidi Lorem insulordolor et amot desin timi sin lidiLorem insulordolor et amot desin timi sin lidi Lorem insulordolor et amot desin timi sin lidiLorem insulordolor et amot desin timi sin lidi'),
    Social(author: "Charmaine",image: "${UIData.storage}${UIData.commentHeader}",info: "Charmaine Charmaine lasdas faxcaz Charmaine lasdas faxcaz ",time: '4min',header: 'Charmaine Nesque \nporro quisquam est \nqui dolorem .',content: 'Lorem insulordolor et amot desin timi sin lidi Lorem insulordolor et amot desin timi sin lidiLorem insulordolor et amot desin timi sin lidi Lorem insulordolor et amot desin timi sin lidiLorem insulordolor et amot desin timi sin lidi Lorem insulordolor et amot desin timi sin lidiLorem insulordolor et amot desin timi sin lidi'),
  ];

     final socialPlatform = [
       SocialPlatform(platform: "facebook",social: _social),
       SocialPlatform(platform: "instagram",social: _social),
       SocialPlatform(platform: "twitter",social: _social),
       SocialPlatform(platform: "medium",social: _social),
  ];

     List<SocialPlatform> getSocialPlatforms(){
       _socialPlatforms = socialPlatform;
       return _socialPlatforms;
     }

     void submitReply(String reply){
       print(reply);
     }

}



