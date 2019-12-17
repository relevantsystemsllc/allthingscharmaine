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
  List listData;
  int batchSize;

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
              child: StreamBuilder(stream: Firestore.instance.collection('article').orderBy('createdAt').limit(batchSize).snapshots(),
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
    batchSize = 5;
  }
}