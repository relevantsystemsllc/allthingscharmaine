import 'package:flutter/material.dart';
import 'package:allthingscharmaine/widgets/bottomNavBar.dart';


class Social2 extends StatefulWidget{

  @override
  Social2State createState() => Social2State();
}

class Social2State extends State<Social2>
    with SingleTickerProviderStateMixin {



  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: SafeArea(child:Column(
                children: <Widget>[
                  Padding(child:Row(
                    children:[
                      Icon(Icons.keyboard_backspace,color: Colors.black54,),
                      ImageIcon(AssetImage("assets/notification.png"),color: Colors.black54)
                    ],mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),padding: EdgeInsets.only(left: 40.0,right: 40.0)),
                  SizedBox(height:30.0),
                  Padding(child:Text("reply",style: TextStyle(fontSize: 35.0,color: Colors.black54,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(left: 40.0),),
                  SizedBox(height:40.0),
                  Padding(child:Text("response",style: TextStyle(fontSize: 18.0,color: Colors.grey,fontWeight: FontWeight.normal),),padding: EdgeInsets.only(left: 40.0),),
                  Flexible(child: Align(child: Padding(child:
                  Row(
                   children:[
                     Expanded(child:TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                  )),
                   SizedBox(width: 10.0),
                   ImageIcon(AssetImage("assets/attachment.png"),color: Colors.grey),
                   SizedBox(width: 10.0),
                   ImageIcon(AssetImage("assets/gallery.png"),color: Colors.grey),
                   ],mainAxisAlignment: MainAxisAlignment.spaceBetween,),
                      padding: EdgeInsets.only(left: 40.0,right: 40.0)),alignment: Alignment.bottomCenter),flex: 3, fit: FlexFit.tight),
                  Flexible(child: Align(child: Padding(child:InkWell(
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color: Colors.pinkAccent[100]),
                      child: Center(child:Text("send",style: TextStyle(color:Colors.white,fontSize: 13.0),)),width: MediaQuery.of(context).size.width,
                      height: 40.0
                    )),padding: EdgeInsets.only(left: 40.0,right: 40.0),),alignment: Alignment.center
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