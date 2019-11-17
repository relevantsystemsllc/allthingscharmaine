import 'package:allthingscharmaine/model/event.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class EventDetail extends StatelessWidget{

  EventDetail(this._event);
  final Event _event;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return LayoutBuilder(
      builder: (context, constraints){
        return Scaffold(
          body: SingleChildScrollView(child: SizedBox(height: screenHeight,
          child: Stack(
                children: <Widget>[
                  FractionallySizedBox(
                      widthFactor: 1.0,
                      heightFactor: 0.8,
                      child: Image.asset(_event.image,fit: BoxFit.cover, scale: 2.0,)
                    // Image.asset("assets/blur-breakfast-close-up-376464.jpg",fit: BoxFit.cover,),
                  ),
                  Column(
                    children: [
                      //Padding(child:Align(child:Icon(Icons.arrow_back,color: Colors.white),alignment: Alignment.topLeft),padding: EdgeInsets.only(top: 42.0,left: 16.0),),
                      AppBar(
                        brightness: Brightness.dark,
                        iconTheme: IconThemeData(color: Colors.white),
                        elevation: 0.0,
                        backgroundColor: Colors.transparent,
                      ),
                      Expanded(
                          child: Align(child:FractionallySizedBox(
                              widthFactor: 1.0,
                              heightFactor: 0.55,
                              child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0))),
                                  child: Padding(
                                    child:Column(
                                      children:[
                                        Text(_event.title,style: TextStyle(
                                            color: CustomColors.TITLE_EVENT_COLOR,
                                            fontSize: 19.0,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 1.3),),
                                        SizedBox(height: 10.0),
                                        Text(_event.description,
                                          style: TextStyle(
                                              color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                                              fontSize: 12.0,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w300,
                                              height: 1.5),),
                                        SizedBox(height: 15.0),
                                        Flexible(child: Row(
                                          children: <Widget>[
                                            Icon(Icons.access_time, color: Colors.black38,),
                                            SizedBox(width: 5.0),
                                            Text("January 18, 2019",style:TextStyle(
                                                color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                                                fontFamily: 'Poppins',
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w300,
                                                height: 1.5))
                                          ],
                                        )),
                                        SizedBox(height: 25.0),
                                        /* InkWell(
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color: Colors.pinkAccent[100]),
                              child: Center(child:Text("comment",style: TextStyle(color:Colors.white,fontSize: 13.0),)),width: MediaQuery.of(context).size.width,
                              height: 40.0,
                            ),
                          )*/
                                      ],crossAxisAlignment: CrossAxisAlignment.start,
                                    ),padding: EdgeInsets.all(35.0),
                                  )
                              )),alignment: Alignment.bottomCenter,))
                    ],
                  ),
                ])
          ,),),
        );
      });

  }
}