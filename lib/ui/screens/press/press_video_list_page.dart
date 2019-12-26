import 'package:allthingscharmaine/core/services/API.dart';
import 'package:allthingscharmaine/locator.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/more_recent_videos.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/press_video_item.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PressVideoList extends StatefulWidget{

  PressVideoList({@required this.title, @required this.category, this.categoryId});

  String title;
  String category;
  String categoryId;

  @override
  State createState() {
    return _PressVideoListState();
  }
}

class _PressVideoListState extends State<PressVideoList>{
  int _batchSize = 10; // batch size of data loaded
  Api _api;
  bool _loading = true; // determines if data is still loading
  bool _hasMoreData = true; // check if the collection still has more data to display
  DocumentSnapshot _lastDocument;
  List<DocumentSnapshot> videoSnapShotList = [];
  ScrollController _scrollController =
  ScrollController(initialScrollOffset: 0.0, keepScrollOffset: true);

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
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: CustomColors.TITLE_COLOR,
        ),
        automaticallyImplyLeading: true,
        title: Text(widget.title, style: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize:15.0, color: CustomColors.TITLE_COLOR),),
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
              Text(widget.category, maxLines: 1,overflow: TextOverflow.ellipsis, style: TextStyle(color: CustomColors.TITLE_COLOR,
                  fontFamily: 'Poppins', fontSize: 30.0, fontWeight: FontWeight.w600),),
              SizedBox(height: 10.0,),

            ],
          ),),
        MoreRecentVideos(false, widget.categoryId),
        SizedBox(height: 46, ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          child: _loading == true?
          Center(child: Text('loading...'),) :
          videoSnapShotList.isEmpty?
          Center(child: Text('No Video')) :
          ListView.builder(
            //controller: _scrollController,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: videoSnapShotList.length>4? videoSnapShotList.length-4+1 : 0,
              itemBuilder: (context, index){
                if((videoSnapShotList.length-4 == index)){
                  return Container(margin: EdgeInsets.only(top: 15, bottom: 30),
                    child: InkWell(child: Center(child: Text('view more',
                      style: TextStyle(
                        color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                        fontSize: 12.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,),),),
                      onTap: (){
                        if(_api != null && !_loading && _hasMoreData){
                          _loading = true;
                          if (widget.categoryId == null) {
                            _api.getMoreVideosList(_lastDocument, _batchSize)
                                .then((snapShotList){
                              setData(snapShotList);
                            });
                          }else{
                            _api.getMoreCategoryVideoList([widget.categoryId], _lastDocument, _batchSize)
                                .then((snapShotList){
                              setData(snapShotList);
                            });
                          }

                        }
                      },),);
                }else{
                  return Container(child: PressVideoItem(videoSnapShotList[index+4]), margin: EdgeInsets.only(bottom: 15.0),);
                }
              }),
        )],)
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _api = locator<Api>();
    _loading = true;
    if (widget.categoryId == null) {
    _api.getInitialVideoList(_batchSize).then((snapShotList) {
      setData(snapShotList);
    });
  }else{
        _api.getInitialCategoryVideoList([widget.categoryId], _batchSize).then((snapShotList) {
          setData(snapShotList);
        });
    }
  }

  void setData(List<DocumentSnapshot> snapShotList){

    setState(() {
      print(snapShotList.length);
      if(snapShotList!=null && snapShotList.isNotEmpty){
        videoSnapShotList.addAll(snapShotList);
        _lastDocument = snapShotList[snapShotList.length - 1];
      }else{_hasMoreData = false;}
      _loading = false;
    });
  }
}