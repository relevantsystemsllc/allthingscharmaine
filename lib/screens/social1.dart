import 'package:flutter/material.dart';


class Social1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
    body: Stack(
        children:[FractionallySizedBox(
          widthFactor: 1.0,
          heightFactor: 0.8,
          child: Container(decoration: BoxDecoration(color: Colors.cyan),
          child: Image.asset("assets/blur-breakfast-close-up-376464.jpg",fit: BoxFit.cover,)
         // Image.asset("assets/blur-breakfast-close-up-376464.jpg",fit: BoxFit.cover,),
          )),
          Column(
            children: <Widget>[ Padding(child:Align(child:Icon(Icons.keyboard_backspace,color: Colors.white),alignment: Alignment.topLeft),padding: EdgeInsets.only(top: 50.0,left: 25.0),),
            Expanded(child: Align(child:FractionallySizedBox(
                widthFactor: 1.0,
                heightFactor: 0.55,
                child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0))),
                    child: Padding(
                        child:Column(
                     children:[
                       Text("Charmaine Nesque \nporro quisquam est \nqui dolorem .",style: TextStyle(color:Colors.black87,fontSize: 18.0,height: 1.3),),
                       SizedBox(height: 10.0),
                       Text("Lorem insulordolor et amot desin timi sin lidi Lorem insulordolor et amot desin timi sin lidiLorem insulordolor et amot desin timi sin lidi Lorem insulordolor et amot desin timi sin lidiLorem insulordolor et amot desin timi sin lidi Lorem insulordolor et amot desin timi sin lidiLorem insulordolor et amot desin timi sin lidi",
                       style: TextStyle(color: Colors.black26,fontSize: 13.0,height: 1.5)),
                       SizedBox(height: 15.0),
                       Row(
                         children: <Widget>[
                           Icon(Icons.access_time,color: Colors.black38,),
                           SizedBox(width: 5.0),
                           Text("January 18, 2019",style:TextStyle(color: Colors.black38,fontSize: 12.0,height: 1.5))
                         ],
                       ),
                       SizedBox(height: 25.0),
                       InkWell(
                         child: Container(
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color: Colors.pinkAccent[100]),
                           child: Center(child:Text("comment",style: TextStyle(color:Colors.white,fontSize: 13.0),)),width: MediaQuery.of(context).size.width,
                           height: 40.0,
                         ),
                       )
                       ],crossAxisAlignment: CrossAxisAlignment.start,
                    ),padding: EdgeInsets.all(35.0),
                    )
                )),alignment: Alignment.bottomCenter,))
            ],
          )
        ])
    );


// children: <Widget>[AppBar(leading: Icon(Icons.keyboard_backspace,color: Colors.white),backgroundColor: Colors.transparent,)],
/*


 */
  }


}