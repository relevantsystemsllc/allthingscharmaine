import 'package:allthingscharmaine/ui/widgets/tourewidgets/charmaine_tv_item.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/drawer_widget.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CharmaineTv extends StatefulWidget {
  @override
  State createState() => _CharmaineTvState();
}

class _CharmaineTvState extends State<CharmaineTv> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: NavigationDrawer(),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/hamb-menu.png'),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        backgroundColor: Colors.white,
        /* leading: IconButton(icon: Image.asset('assets/hamb-menu.png'), onPressed: () { _scaffoldKey.currentState.openDrawer();}),*/
        centerTitle: true,
        iconTheme: IconThemeData(
          color: CustomColors.TITLE_COLOR,
        ),
        title: Text(
          'charmaine tv',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              fontSize: 15.0,
              color: CustomColors.TITLE_COLOR),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/notification.svg', color: CustomColors.TITLE_COLOR,),
            tooltip: 'Notification',
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.0,
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'charmaine tv',
                style: TextStyle(
                    color: CustomColors.TITLE_COLOR,
                    fontFamily: 'Poppins',
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),

            SizedBox(height: 10.0,),
            StreamBuilder(stream: Firestore.instance.collection('charmainetv').orderBy('position').snapshots(),
              builder: (context, snapShot){
                if(!snapShot.hasData)return const Center(child: Text('loading'),);
                return ListView.builder(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  itemCount: snapShot.data.documents.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return Container(child: CharmaineTvItem(snapShot: snapShot.data.documents[index]), padding: EdgeInsets.only(bottom: 10.0),);
                  },);
              },)

          ],
        ),
      ),
    );
  }
}