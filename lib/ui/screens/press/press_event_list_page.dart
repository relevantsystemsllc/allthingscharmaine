import 'package:allthingscharmaine/core/services/API.dart';
import 'package:allthingscharmaine/locator.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/press_event_item.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PressEventList extends StatefulWidget{

  @override
  State createState() {
    return _PressEventListSate();
  }
}

class _PressEventListSate extends State<PressEventList>{
  int _batchSize = 2; // batch size of data loaded
  Api _api;
  bool _loading = true; // determines if data is still loading
  bool _hasMoreData = true; // check if the collection still has more data to display
  DocumentSnapshot _lastDocument;
  List<DocumentSnapshot> eventSnapShotList = [];
  ScrollController _scrollController =
  ScrollController(initialScrollOffset: 0.0, keepScrollOffset: true);

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      if (_scrollController.offset == _scrollController.position.maxScrollExtent ) {
      // We may load more if the list reaches the end
      //TODO

      }
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: CustomColors.TITLE_COLOR,
        ),
        title: Text('press', style: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize:15.0, color: CustomColors.TITLE_COLOR),),
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
            Expanded(child: _loading == true?
                Center(child: Text('loading...'),) :
                eventSnapShotList.isEmpty?
                Center(child: Text('No Event')) :
                    ListView.builder(
                    //controller: _scrollController,
                    itemCount: eventSnapShotList.length!=0? eventSnapShotList.length+1 : 0,
                    itemBuilder: (context, index){
                      if(eventSnapShotList.length == index){
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
                                _api.getMoreEventList(_lastDocument, _batchSize)
                                .then((snapShotList){
                                  setState(() {
                                    eventSnapShotList.addAll(snapShotList);
                                    if(snapShotList!=null && snapShotList.isNotEmpty){
                                      _lastDocument = snapShotList[snapShotList.length - 1];
                                    }else{_hasMoreData = false;}
                                    _loading = false;
                                    print(eventSnapShotList.length);
                                  });

                                });

                              }
                            },),);
                      }else{
                        return Container(child: PressEventItem(eventSnapShotList[index]), margin: EdgeInsets.only(bottom: 15.0),);
                      }
                    }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _api = locator<Api>();
    _api.getInitialEventList(_batchSize).then((snapShotList) {
      setState(() {
        eventSnapShotList = snapShotList;
        if(eventSnapShotList.isNotEmpty){ _lastDocument = eventSnapShotList[eventSnapShotList.length - 1];}
        _loading = false;
      });
    });
  }
}