import 'package:allthingscharmaine/model/charmainetv.dart';
import 'package:allthingscharmaine/ui/screens/press/press_video_list_page.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/charmaine_tv_item.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class CharmaineTv extends StatefulWidget{

  @override
  State createState() => _CharmaineTvState();
}

class _CharmaineTvState extends State<CharmaineTv>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    List<Charmainetv> data = Data.getTVData();
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        /* leading: IconButton(icon: Image.asset('assets/hamb-menu.png'), onPressed: () { _scaffoldKey.currentState.openDrawer();}),*/
        centerTitle: true,
        iconTheme: IconThemeData(
          color: CustomColors.TITLE_COLOR,
        ),
        title: Text('charmaine tv' , style: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize:15.0, color: CustomColors.TITLE_COLOR),),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/notification.png'),
            tooltip: 'Notification',
            onPressed: () {},
          ),
        ],
      ),
      //drawer: Drawer(child: NavigationDrawer(),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5.0,),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('charmaine tv', style: TextStyle(color: CustomColors.TITLE_COLOR,
                  fontFamily: 'Poppins', fontSize: 30.0, fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 10.0,),
            ListView.builder(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              itemCount: data.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index){
                return GestureDetector(child: Container(child: CharmaineTvItem(imagePath: data[index].imagePath, name: data[index].name), padding: EdgeInsets.only(bottom: 10.0),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PressVideoList(title: 'charmaine tv', category: data[index].name,)));
                },);
              },),

          ],
        ),
      ),
    );
  }
}