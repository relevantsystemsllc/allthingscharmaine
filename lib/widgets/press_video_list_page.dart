import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:allthingscharmaine/widgets/press_video_item.dart';
import 'package:flutter/material.dart';

import 'more_recent_videos.dart';

class PressVideoList extends StatefulWidget{

  @override
  State createState() {
    return _PressVideoListState();
  }
}

class _PressVideoListState extends State<PressVideoList>{
  ScrollController _scrollController =
  ScrollController(initialScrollOffset: 0.0, keepScrollOffset: true);
  List listData;
  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      if (_scrollController.offset == _scrollController.position.maxScrollExtent ) {
// We may load more if the list reaches the end

      }
    });
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: CustomColors.TITLE_COLOR,
        ),
        automaticallyImplyLeading: true,
        title: Text('press', style: TextStyle(color: CustomColors.TITLE_COLOR),),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Image.asset('assets/notification.png'),
            tooltip: 'Notification',
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [ Container(
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 5.0,),
              Text('videos', style: TextStyle(color: CustomColors.TITLE_COLOR,
                  fontFamily: 'Poppins', fontSize: 30.0, fontWeight: FontWeight.w600),),
              SizedBox(height: 10.0,),

            ],
          ),),
        MoreRecentVideos(),
        SizedBox(height: 46, ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView.builder(
            //controller: _scrollController,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listData.isNotEmpty? listData.length+1 : 0,
              itemBuilder: (context, index){
                if((listData.length == index)){
                  return Container(margin: EdgeInsets.only(top: 15, bottom: 30),
                    child: Center(child: Text('view more',
                      style: TextStyle(
                        color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                        fontSize: 12.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,),),),);
                }else{
                  return GestureDetector(child: Container(child: PressVideoItem(listData[index]), margin: EdgeInsets.only(bottom: 15.0),),
                    onTap: (){/*Navigator.push(context, MaterialPageRoute(builder: (context) => ArticleDetail(listData[index])));*/},);
                }
              }),
        )],)
      ),
    );
  }

  @override
  void initState() {
    listData = Data.getVideoData();
  }
}