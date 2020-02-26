import 'package:allthingscharmaine/core/model/shop.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/drawer_widget.dart';
import 'package:allthingscharmaine/utils/uiData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/background.dart';
import 'package:allthingscharmaine/ui/widgets/tomisinWidgets/shopCards.dart';
import 'package:allthingscharmaine/core/viewmodels/shopVM.dart';
import 'package:provider/provider.dart';

class ShopTabScreen extends StatefulWidget {
  @override
  _ShopTabScreenState createState() => _ShopTabScreenState();
}

class _ShopTabScreenState extends State<ShopTabScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabBarController;
  int active = 0;
  Color _color;
  var items;
  List<Shop> _categories = [];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _tabBarController =
        new TabController(vsync: this, length: 4, initialIndex: 0);
    _color = UIData.shopColor;
    items =  Provider.of<ShopVM>(context, listen: false);
    items.shopItems().then((value)=>
    setState((){
      _categories=value[0];
    }));
  }

  @override
  void dispose() {
    _tabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(children: [
        Base(topFlex: 3, color: _color),
        SafeArea(child:Column(
              children: <Widget>[
                Padding(
                    child: Row(
                      children: [
                        GestureDetector(
                            child: ImageIcon(
                              AssetImage(UIData.hambMenu),
                              color: Colors.white,
                            ),
                            onTap: () =>
                                _scaffoldKey.currentState.openDrawer()),
                        Text(
                          UIData.shop,
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        GestureDetector(
                            child: ImageIcon(AssetImage(UIData.notification),
                                color: Colors.white),
                            onTap: () =>
                                _scaffoldKey.currentState.openDrawer()),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    padding: EdgeInsets.all(15.0)),
                Padding(
                  child: Text(
                    UIData.shopHeader,
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.only(left: 40.0),
                ),
                SizedBox(height: 30.0),
                Padding(
                  child: TabBar(
                      tabs: [
                        _tabBarController.index == 0
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20.0)),
                                padding:
                                    EdgeInsets.only(top: 10.0, bottom: 10.0),
                                width: 120.0,
                                child: Text(UIData.apronTab,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                    textAlign: TextAlign.center))
                            : Text(UIData.apronTab,
                                style: TextStyle(
                                    color: Colors.white30, fontSize: 15.0),
                                textAlign: TextAlign.center),
                        _tabBarController.index == 1
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20.0)),
                                padding:
                                    EdgeInsets.only(top: 10.0, bottom: 10.0),
                                width: 120.0,
                                child: Text(UIData.bookTab,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                    textAlign: TextAlign.center))
                            : Text(UIData.bookTab,
                                style: TextStyle(
                                    color: Colors.white30, fontSize: 15.0),
                                textAlign: TextAlign.center),
                        _tabBarController.index == 2
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20.0)),
                                padding:
                                    EdgeInsets.only(top: 10.0, bottom: 10.0),
                                width: 120.0,
                                child: Text(UIData.clothingTab,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                    textAlign: TextAlign.center))
                            : Text(UIData.clothingTab,
                                style: TextStyle(
                                    color: Colors.white30, fontSize: 15.0),
                                textAlign: TextAlign.center),
                        _tabBarController.index == 3
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20.0)),
                                padding:
                                    EdgeInsets.only(top: 10.0, bottom: 10.0),
                                width: 120.0,
                                child: Text(UIData.jewelryTab,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                    textAlign: TextAlign.center))
                            : Text(UIData.jewelryTab,
                                style: TextStyle(
                                    color: Colors.white30, fontSize: 15.0),
                                textAlign: TextAlign.center),
                      ],
                      controller: _tabBarController,
                      labelColor: Colors.transparent,
                      indicatorColor: Colors.transparent,
                      isScrollable: true,
                      onTap: (val) => setState(() {
                            _color = getColor(val);
                            _categories = items.getCategories(val);
                          })),
                  padding: EdgeInsets.only(left: 20.0),
                ),
                SizedBox(height: 7.0),
                Expanded(
                    child: GridView.count(
                  //primary: false,
                  padding: const EdgeInsets.only(left: 20, right: 20.0),
                  crossAxisSpacing: 0.5,
                  mainAxisSpacing: 1,
                  crossAxisCount: 2,
                  childAspectRatio: 0.65,
                  children: _categories
                      .map<Widget>((value) => GestureDetector(
                          child: ShopCard(item: value, color: _color),
                          onTap: () =>
                              shopItem(_tabBarController.index, value)))
                      .toList(),
                  shrinkWrap: true,
                )),
                SizedBox(height: 3.0)
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),bottom: false),
      ]),
      backgroundColor: Colors.white,
      drawer: Drawer(child: NavigationDrawer()),
    );
  }

  void shopItem(int tab, var value) {
    switch (tab) {
      case 0:
        Navigator.of(context).pushNamed(UIData.shopItemRoute, arguments: value);
        break;
      case 1:
        Navigator.of(context).pushNamed(UIData.shopBookRoute, arguments: value);
        break;
      case 2:
        Navigator.of(context).pushNamed(UIData.shopItemRoute, arguments: value);
        break;
      case 3:
        Navigator.of(context).pushNamed(UIData.shopItemRoute, arguments: value);
        break;
      default:
        return;
    }
  }

  Color getColor(int val) {
    switch (val) {
      case 0:
        _color = UIData.shopColor;
        return _color;
        break;
      case 1:
        _color = UIData.bookColor;
        return _color;
        break;
      case 2:
        _color = UIData.clothingColor;
        return _color;
        break;
      case 3:
        _color = UIData.jewelryColor;
        return _color;
        break;
      default:
        return UIData.shopColor;
    }
  }
}
