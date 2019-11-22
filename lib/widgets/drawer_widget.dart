import 'package:allthingscharmaine/widgets/charmaine_tv_list.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20.0, left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 40.0,),
        Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [Icon(Icons.close)],),
        Expanded(child: ListView(children: [
          ListTile(
            title: Text('charmaine tv', style: TextStyle(fontSize: 18.0),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => CharmaineTv()));
            },
          ),
          ListTile(
            title: Text('forum', style: TextStyle(fontSize: 18.0),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Q/A', style: TextStyle(fontSize: 18.0),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('library', style: TextStyle(fontSize: 18.0),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('my account', style: TextStyle(fontSize: 18.0),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('purchases', style: TextStyle(fontSize: 18.0),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('billing information', style: TextStyle(fontSize: 18.0),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('contact us', style: TextStyle(fontSize: 18.0),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],)),
          ListTile(
            title: Text('logout', style: TextStyle(fontSize: 18.0, color: Color(0xffED9B9D)),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
      ],
      ),
    );
  }
}