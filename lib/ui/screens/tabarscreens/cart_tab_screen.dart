import 'package:allthingscharmaine/ui/screens/otherscreens%20/contact_info_screen.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/carditem.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/custom_home_appbar.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Column(
        children: <Widget>[
          CustomHomeAppbar(
            height: 10,
            bgColor: Colors.black,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16, bottom: 8, top: 24),
              child: Text(
                "cart",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 350,
            padding: EdgeInsets.only(left: 16, right: 16),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey,
              ),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Slidable(
                  actionPane: SlidableDrawerActionPane(),
                  actionExtentRatio: 0.25,
                  direction: Axis.horizontal,
                  child: CartItem(),
                  secondaryActions: <Widget>[
                    IconSlideAction(
                      color: MyColors().pinkActive,
                      icon: Icons.delete,
                      foregroundColor: Colors.white,
                      onTap: () {},
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
            child: Row(
              children: <Widget>[
                Text(
                  "Subtotal",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "\$70",
                  style: TextStyle(
                      color: MyColors().pinkActive,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: Container(
                    height: 50.0,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactInfoScreen()));
                      },
                      child: Text(
                        "make purchase",
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.white),
                      ),
                      color: MyColors().pinkActive,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                  child: Container(
                    height: 50.0,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "keep buying",
                        style: TextStyle(color: MyColors().pinkActive),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(color: MyColors().pinkActive),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ]);
  }
}
