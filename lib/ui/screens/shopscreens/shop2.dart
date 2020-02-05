
import 'package:allthingscharmaine/core/model/shop.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/drawer_widget.dart';
import 'package:allthingscharmaine/utils/sizeConfig.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:cache_image/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/background.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/bottomNavBar.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/shopBottomSheet.dart';

class Shop2 extends StatefulWidget{
  final Shop item;

  Shop2({@required this.item}):assert(item!=null);

  @override
  Shop2State createState() => Shop2State();
}

class Shop2State extends State<Shop2> {
  ScrollController sc;
  List<double> radian;
  List<Color> color;
  List<Color> colors;
  static final GlobalKey<ScaffoldState> _scaffoldKeys = new GlobalKey<ScaffoldState>();



  @override
  void initState() {
    radian = [3.0,3.0,4.0,3.0,3.0];
    color = UIData.shopColors;
    colors = UIData.shopItemColors;
    super.initState();
    sc = new ScrollController(initialScrollOffset: SizeConfig.blockSizeHorizontal*15.66);
    WidgetsBinding.instance.addPostFrameCallback((_){
      sc.animateTo(SizeConfig.blockSizeHorizontal*25.67, duration:Duration(milliseconds: 500), curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        key: _scaffoldKeys,
        body: Stack(
            children:[
              Base(topFlex: 2),
              SafeArea(child: Column(
                children: <Widget>[
                 Flexible(child:Column(
               children:[
                 Material(
                 child:Padding(child:Row(children:[
            GestureDetector(child:Icon(Icons.keyboard_backspace,color: Colors.white),onTap: ()=>Navigator.of(context).pop()),
            Text(UIData.shop,style: TextStyle(color:Colors.white,fontSize: 20.0,fontFamily: 'Poppins')),
            GestureDetector(child:ImageIcon(AssetImage(UIData.notification),color: Colors.white),onTap: ()=>_scaffoldKeys.currentState.openDrawer()),
          ],mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),padding: EdgeInsets.only(right:15.0,left: 15.0,top: 15.0)),elevation: 40.0,color: Colors.transparent,shadowColor: Colors.transparent,),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height:30.0),
                          Align(child:Padding(child:Text(UIData.apronTab,style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(left: 40.0),),alignment: Alignment.centerLeft,),
                          SingleChildScrollView(
                            child: Row(
                              children: <Widget>[
                                Image(image: CacheImage('${UIData.storage}${UIData.apron1}'),fit: BoxFit.fitHeight,height: 200.0),
                                Image(image: CacheImage(widget.item.image),fit: BoxFit.fitHeight,height: 200.0),
                                Image(image: CacheImage('${UIData.storage}${UIData.apron3}'),fit: BoxFit.fitHeight,height: 200.0),
                              ],mainAxisAlignment: MainAxisAlignment.center,
                            ),scrollDirection: Axis.horizontal,controller: sc,primary: false,
                          ),
                          Center(
                              child:Container(
                                height: 20.0,
                                width: 100.0,
                                child:ListView(
                                  children: <Widget>[
                                    Padding(child:CircleAvatar(maxRadius: radian[0],backgroundColor: color[0],),padding: EdgeInsets.only(left: 10.0)),
                                    Padding(child:CircleAvatar(maxRadius: radian[1],backgroundColor: color[1],),padding: EdgeInsets.only(left: 10.0)),
                                    Padding(child:CircleAvatar(maxRadius: radian[2],backgroundColor: color[2],),padding: EdgeInsets.only(left: 10.0)),
                                    Padding(child:CircleAvatar(maxRadius: radian[3],backgroundColor: color[3],),padding: EdgeInsets.only(left: 10.0)),
                                    Padding(child:CircleAvatar(maxRadius: radian[4],backgroundColor:color[4],),padding: EdgeInsets.only(left: 10.0)),
                                  ],padding: EdgeInsets.all(3.0),scrollDirection: Axis.horizontal,
                                ),
                              )
                          ),
                          SizedBox(height: 20.0),
                          Padding(padding: EdgeInsets.only(left: 30.0),child: Text("\$${widget.item.cost}",style: TextStyle(color: Colors.green[200],fontSize: 22.0,fontWeight: FontWeight.bold))),
                          Padding(padding: EdgeInsets.only(left: 30.0),child: Text(widget.item.info,style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.normal))),
                          Padding(padding: EdgeInsets.only(left: 30.0,right: 50.0),child: Text(widget.item.description,style: TextStyle(color: Colors.black26,fontSize: 13.0,fontWeight: FontWeight.normal))),
                          SizedBox(height: 20.0),
                          Container(
                            height: 20.0,
                            width: 300.0,
                            child:ListView(
                              children: <Widget>[
                                Padding(child:CircleAvatar(maxRadius: 10.0,backgroundColor: colors[0],),padding: EdgeInsets.only(left: 30.0)),
                                Padding(child:CircleAvatar(maxRadius: 10.0,backgroundColor: colors[1],),padding: EdgeInsets.only(left: 10.0)),
                                Padding(child:CircleAvatar(maxRadius: 10.0,backgroundColor: colors[2],),padding: EdgeInsets.only(left: 10.0)),
                                Padding(child:CircleAvatar(maxRadius: 10.0,backgroundColor: colors[3],),padding: EdgeInsets.only(left: 10.0)),
                                Padding(child:CircleAvatar(maxRadius: 10.0,backgroundColor:colors[4],),padding: EdgeInsets.only(left: 10.0)),
                              ],scrollDirection: Axis.horizontal,
                            ),
                          ),
                          SizedBox(height: 20.0),

                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color: Colors.green[200]),
                              child: Center(child:Text(UIData.addToCart,style: TextStyle(color:Colors.white,fontSize: 15.0),)),width: MediaQuery.of(context).size.width,
                              height: 40.0,margin: EdgeInsets.only(left: 30.0,right: 30.0),
                            ),
                            onTap: ()=>_settingModalBottomSheet(context),
                          ),
                          SizedBox(height: 20.0),
                        ],crossAxisAlignment: CrossAxisAlignment.start
                      ),
                    ),
                  )
      ],crossAxisAlignment: CrossAxisAlignment.start),flex: 9),
                  Flexible(child:GestureDetector(child:BottomNavBar(),onTap: (){

                  },),flex: 1)
                ],crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),bottom: false)
            ]),backgroundColor: Colors.white,
        drawer: Drawer(child: NavigationDrawer()),
      );
  }
  void _settingModalBottomSheet(context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child:ShopBottomSheet(color: UIData.shopColor,item: widget.item),
            color: Colors.grey,
            padding: EdgeInsets.only(top: 3.0),
          );
        }
    );
  }

}