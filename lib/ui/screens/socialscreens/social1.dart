import 'package:allthingscharmaine/model/social.dart';
import 'package:cache_image/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:photo_view/photo_view.dart';


class Social1 extends StatelessWidget{
  final formatDate = new DateFormat.yMMMMd("en_US");
  final  Social social;

  Social1({@required this.social});


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
    body: Stack(
        children:[
          FractionallySizedBox(
          widthFactor: 1.0,
          heightFactor: 0.8,
       child: PhotoView(customSize: Size.fromHeight(400),
          imageProvider: CacheImage(social.image), initialScale: PhotoViewComputedScale.contained *1.6, minScale: PhotoViewComputedScale.contained *1.6, maxScale: PhotoViewComputedScale.contained *2.0, basePosition: Alignment.topCenter,
        )),
          Column(
            children: <Widget>[ Padding(child:Align(child:GestureDetector(child:Icon(Icons.keyboard_backspace,color: Colors.white),onTap: ()=>Navigator.of(context).pop()),alignment: Alignment.topLeft),padding: EdgeInsets.only(top: 50.0,left: 25.0),),
            Expanded(child: Align(child:FractionallySizedBox(
                heightFactor: 0.55,
                child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0))),
                    child: Padding(
                        child:Column(
                     children:[
                       Text(social.header,style: TextStyle(color:Colors.black87,fontSize: 18.0,height: 1.3),),
                       SizedBox(height: 10.0),
                      Expanded(child:SingleChildScrollView(child: Text(social.content,
                       style: TextStyle(color: Colors.black26,fontSize: 13.0,height: 1.5)))),
                       SizedBox(height: 15.0),
                       Row(
                         children: <Widget>[
                           Icon(Icons.access_time,color: Colors.black38,),
                           SizedBox(width: 5.0),
                           Text(formatDate.format(DateTime.now()),style:TextStyle(color: Colors.black38,fontSize: 12.0,height: 1.5))
                         ],
                       ),
                       SizedBox(height: 25.0),
                       InkWell(
                         child: Container(
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color: Colors.pinkAccent[100]),
                           child: Center(child:Text(UIData.commentButton,style: TextStyle(color:Colors.white,fontSize: 13.0),)),width: MediaQuery.of(context).size.width,
                           height: 40.0,
                         ),onTap: ()=> Navigator.of(context).pushNamed(UIData.socialReplyRoute,arguments: social),
                       ),
                       ],crossAxisAlignment: CrossAxisAlignment.start,
                    ),padding: EdgeInsets.all(35.0))
                )),alignment: Alignment.bottomCenter,))
            ],
          )
        ])
    );
  }


}