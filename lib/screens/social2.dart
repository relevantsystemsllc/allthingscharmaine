import 'package:allthingscharmaine/model/social.dart';
import 'package:allthingscharmaine/services/socialData.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/widgets/bottomNavBar.dart';
import 'package:provider/provider.dart';


class Social2 extends StatelessWidget{

  final Social social;
  final TextEditingController textController = TextEditingController();

  Social2({@required this.social});
  @override
  Widget build(BuildContext context) {
    var socialController = Provider.of<SocialData>(context, listen: false);
    return
      Scaffold(
        body: SafeArea(child:Column(
                children: <Widget>[
                  Padding(child:Row(
                    children:[
                    GestureDetector(child:Icon(Icons.keyboard_backspace,color: Colors.black87),onTap: ()=>Navigator.of(context).pop()),
                      ImageIcon(AssetImage(UIData.notification),color: Colors.black87)
                    ],mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),padding: EdgeInsets.only(left: 40.0,right: 40.0)),
                  SizedBox(height:30.0),
                  Padding(child:Text(UIData.reply,style: TextStyle(fontSize: 35.0,color: Colors.black54,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(left: 40.0),),
                  SizedBox(height:40.0),
                  Padding(child:Text(UIData.response,style: TextStyle(fontSize: 18.0,color: Colors.grey,fontWeight: FontWeight.normal),),padding: EdgeInsets.only(left: 40.0),),
                  Flexible(child: Align(child: Padding(child:
                  Row(
                   children:[
                     Expanded(child:TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                       controller: textController,
                  )),
                   SizedBox(width: 10.0),
                   ImageIcon(AssetImage(UIData.attachment),color: Colors.grey),
                   SizedBox(width: 10.0),
                   ImageIcon(AssetImage(UIData.gallery),color: Colors.grey),
                   ],mainAxisAlignment: MainAxisAlignment.spaceBetween,),
                      padding: EdgeInsets.only(left: 40.0,right: 40.0)),alignment: Alignment.bottomCenter),flex: 3, fit: FlexFit.tight),
                  Flexible(child: Align(child: Padding(child:InkWell(
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color: Colors.pinkAccent[100]),
                      child: Center(child:Text(UIData.send,style: TextStyle(color:Colors.white,fontSize: 13.0),)),width: MediaQuery.of(context).size.width,
                      height: 40.0
                    ),onTap: () {
                    socialController.submitReply(textController.text);
                    Navigator.pop(context);
                  }),padding: EdgeInsets.only(left: 40.0,right: 40.0),),alignment: Alignment.center
                  ),flex: 2),
                  Expanded(child:BottomNavBar(),),
                ],crossAxisAlignment: CrossAxisAlignment.start,
              ),bottom: false
              )
      );


//
/*


 */
  }


}