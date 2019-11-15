import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:allthingscharmaine/widgets/press_event_item.dart';
import 'package:flutter/material.dart';

class PressEventList extends StatefulWidget{

  @override
  State createState() {
    return _PressEventListSate();
  }
}

class _PressEventListSate extends State<PressEventList>{

  List listData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: CustomColors.TITLE_COLOR,
        ),
        leading: Icon(Icons.arrow_back),
        title: Text('press', style: TextStyle(color: CustomColors.TITLE_COLOR),),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/notification.png'),
            tooltip: 'Notification',
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5.0,),
            Text('events', style: TextStyle(color: CustomColors.TITLE_COLOR,
                fontFamily: 'Poppins', fontSize: 30.0, fontWeight: FontWeight.w600),),
            SizedBox(height: 10.0,),
            Expanded(child: ListView.builder(
                itemCount: listData.length,
                itemBuilder: (context, index){
                  return Container(child: PressEventItem(listData[index]), margin: EdgeInsets.only(bottom: 15.0),);
                })),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    listData = Data.getEventData();
  }
}