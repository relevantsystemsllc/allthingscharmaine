import 'package:allthingscharmaine/model/charmainetv.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:allthingscharmaine/widgets/charmaine_tv_item.dart';
import 'package:flutter/material.dart';

class CharmaineTv extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    List<Charmainetv> data = Data.getTVData();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image.asset('assets/hamb-menu.png'),
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
                return Container(child: CharmaineTvItem(imagePath: data[index].imagePath, name: data[index].name), padding: EdgeInsets.only(bottom: 10.0),);
              },),

          ],
        ),
      ),
    );
  }
}