import 'package:allthingscharmaine/model/purchases.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/purchases_card.dart';
import 'package:allthingscharmaine/ui/widgets/tourewidgets/drawer_widget.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    final List<Purchases> data = Data.getMyPurchases();
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            icon: Image.asset('assets/hamb-menu.png'),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            }),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: CustomColors.TITLE_COLOR,
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/notification.png'),
            tooltip: 'Notification',
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(child: NavigationDrawer()),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16, bottom: 8, top: 24),
              child: Text(
                "purchases",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return PurchaseCard(
                    imagePath: data[index].imagePath,
                    date: data[index].date,
                    purchaseNumber: data[index].purchaseNumber,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
