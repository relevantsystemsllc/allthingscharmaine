import 'package:allthingscharmaine/model/social.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:cache_image/cache_image.dart';
import 'package:flutter/material.dart';


class SocialViewCard extends StatelessWidget {
  final Social social;

  SocialViewCard({@required this.social});


  @override
  Widget build(BuildContext context) {
    return  Column(
        children:[
          SizedBox(height:25.0),
          Row(
            children: <Widget>[
              SizedBox(width: 40.0),
              CircleAvatar(
                maxRadius: 20.0,
                backgroundImage: CacheImage('${UIData.storage}social/author/${social.author}.png'),
                foregroundColor: Colors.transparent,
                backgroundColor: Colors.black12,
              ),
              SizedBox(width: 10.0),
               Expanded(child:RichText(text: TextSpan(text: "${social.author??'Charmaine'}\n",style:TextStyle(color: Colors.black87,fontSize: 15.0,height: 2.0,fontFamily: 'Poppins'),children: [
                TextSpan(text: social.info??"Charmaine Charmaine lasdas faxcaz Charmaine lasdas faxcaz ",style:TextStyle(color: Colors.black54,fontSize: 12.0,fontFamily: 'Poppins',height: 1.3))
              ] ))),
              Text("${social.time??'4min'}\n\n",style:TextStyle(color: Colors.black54,fontSize: 12.0,fontFamily: 'Poppins')),
              SizedBox(width: 30.0),
            ],mainAxisSize: MainAxisSize.min,
          ),
          SizedBox(height: 20.0),
          Padding(padding: EdgeInsets.only(left: 40.0,right: 30.0) ,child:ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: GestureDetector(child:Image(image:CacheImage(social.image)),onTap: ()=> Navigator.of(context).pushNamed(UIData.socialCommentRoute,arguments: social),),
          ))
        ]);
  }
}

