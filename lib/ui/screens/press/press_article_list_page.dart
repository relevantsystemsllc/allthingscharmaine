import 'package:allthingscharmaine/core/services/API.dart';
import 'package:allthingscharmaine/locator.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/press_article_item.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PressArticleList extends StatefulWidget{

  @override
  State createState() {
    return _PressArticleListState();
  }
}

class _PressArticleListState extends State<PressArticleList>{
  ScrollController _scrollController =
  ScrollController(initialScrollOffset: 0.0, keepScrollOffset: true);
  int _batchSize = 10; // batch size of data loaded
  Api _api;
  bool _loading = true; // determines if data is still loading
  bool _hasMoreData = true; // check if the collection still has more data to display
  DocumentSnapshot _lastDocument;
  List<DocumentSnapshot> articleSnapShotList = [];

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      if (_scrollController.offset == _scrollController.position.maxScrollExtent ) {
        // We may load more if the list reaches the end

      }
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: CustomColors.TITLE_COLOR,
        ),
        automaticallyImplyLeading: true,
        title: Text('press', style: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize:15.0, color: CustomColors.TITLE_COLOR),),
        elevation: 0.0,
        actions: [
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
            Text('articles', style: TextStyle(color: CustomColors.TITLE_COLOR,
                fontFamily: 'Poppins', fontSize: 30.0, fontWeight: FontWeight.w600),),
            SizedBox(height: 10.0,),
            Expanded(
              child: _loading == true?
              Center(child: Text('loading...'),) :
              articleSnapShotList.isEmpty?
              Center(child: Text('No Article'),) :
              ListView.builder(
                //controller: _scrollController,
                  itemCount: articleSnapShotList.length!=0? articleSnapShotList.length+1 : 0,
                  itemBuilder: (context, index){
                    if(articleSnapShotList.length == index){
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
                              _api.getMoreArticleList(_lastDocument, _batchSize)
                                  .then((snapShotList){
                                setState(() {
                                  articleSnapShotList.addAll(snapShotList);
                                  if(snapShotList!=null && snapShotList.isNotEmpty){
                                    _lastDocument = snapShotList[snapShotList.length - 1];
                                    _hasMoreData = true;
                                  }else{_hasMoreData = false;}
                                  _loading = false;
                                  print(articleSnapShotList.length);
                                });

                              });

                            }
                          },),);
                    }else{
                      return Container(child: PressArticleItem(articleSnapShotList[index]), margin: EdgeInsets.only(bottom: 15.0),);
                    }
                  }),

              /*StreamBuilder(stream: Firestore.instance.collection('article').orderBy('createdAt').limit(batchSize).snapshots(),
                  builder: (context, snapShot){
                    if(!snapShot.hasData)return const Center(child: Text('No Article'),);
                    return  ListView.builder(
                      //controller: _scrollController,
                        itemCount: snapShot.data.documents.length!=0? snapShot.data.documents.length+1 : 0,
                        itemBuilder: (context, index){
                          if(snapShot.data.documents.length == index){
                            return Container(margin: EdgeInsets.only(top: 15, bottom: 30),
                              child: InkWell(child: Center(child: Text('view more',
                                style: TextStyle(
                                  color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                                  fontSize: 12.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,),),),
                              onTap: (){
                                if(snapShot.data.documents.length == batchSize){
                                  setState(() {
                                    batchSize += 5;
                                    print(batchSize);
                                  });
                                }
                              },),);
                          }else{
                            return Container(child: PressArticleItem(snapShot.data.documents[index]), margin: EdgeInsets.only(bottom: 15.0),);
                          }
                        });
                  }),*/
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
    _api.getInitialArticleList(_batchSize).then((snapShotList) {
      setState(() {
        articleSnapShotList = snapShotList;
        if(articleSnapShotList.isNotEmpty){ _lastDocument = articleSnapShotList[articleSnapShotList.length - 1];}
        _loading = false;
      });
    });
  }
}