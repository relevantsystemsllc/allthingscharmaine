import 'package:flutter/material.dart';

class CharmaineTV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  "charmaine tv ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "view all",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ClipRRect(
              borderRadius: new BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                alignment: Alignment.center,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/cooking.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "cooking",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ClipRRect(
              borderRadius: new BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                alignment: Alignment.center,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/beauty.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "beauty",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ClipRRect(
              borderRadius: new BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                alignment: Alignment.center,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/WGCI.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "WGCI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
