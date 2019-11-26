import 'package:flutter/material.dart';


class SocialviewCard extends StatelessWidget {
  final String icon;
  final String image;
  final String author;
  final String info;
  final String time;

  SocialviewCard({@required this.author,@required this.image,@required this.info,this.time,this.icon});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
     child: Column(
        children:[
          SizedBox(height:25.0),
          Row(
            children: <Widget>[
              SizedBox(width: 40.0),
              CircleAvatar(
                maxRadius: 20.0,
                backgroundImage: AssetImage(icon??"assets/approns 3.png"),
                foregroundColor: Colors.transparent,
                backgroundColor: Colors.black12,
              ),
              SizedBox(width: 10.0),
               Expanded(child:RichText(text: TextSpan(text: "${author??'Charmaine'}\n",style:TextStyle(color: Colors.black45,fontSize: 15.0,fontWeight: FontWeight.bold,height: 2.0),children: [
                TextSpan(text: info??"Charmaine Charmaine lasdas faxcaz Charmaine lasdas faxcaz ",style:TextStyle(color: Colors.black12,fontSize: 12.0,fontWeight: FontWeight.bold,height: 1.3))
              ] ))),
              Text("${time??'4min'}\n\n",style:TextStyle(color: Colors.black54,fontSize: 12.0)),
              SizedBox(width: 30.0),
            ],mainAxisSize: MainAxisSize.min,
          ),
          SizedBox(height: 20.0),
          Padding(padding: EdgeInsets.only(left: 40.0,right: 30.0) ,child:ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(image??"assets/blur-breakfast-close-up-376464.jpg",),
          ))
        ]),width: 375.0);
  }
}

