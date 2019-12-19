import 'package:allthingscharmaine/core/model/video.dart';
import 'package:allthingscharmaine/ui/screens/press/press_video_detail_page.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class HeaderMovieItem extends StatefulWidget {
  //final Video video;
  final DocumentSnapshot videoSnapShot;

  HeaderMovieItem(this.videoSnapShot);

  @override
  _HeaderMovieItemState createState() => _HeaderMovieItemState();

}

  class _HeaderMovieItemState extends State<HeaderMovieItem>{
    String _imageUrl = 'assets/placeholder.png';

    @override
    void initState() {
      super.initState();
      StorageReference storageReference =
      FirebaseStorage.instance.ref().child(widget.videoSnapShot['imageUrl']);
      storageReference.getDownloadURL().then((loc) {
        if (!mounted) return;
        setState(() {
          _imageUrl = loc;
        });
      });
    }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
        child: SizedBox(height: 260.0,
        width: screenWidth,child:Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Flexible(
                      flex:2,
                      child: Stack(children: [
                        CachedNetworkImage(
                            imageUrl: _imageUrl,
                            placeholder: (context, url) =>Image.asset(
                              'assets/placeholder.png',
                              fit: BoxFit.cover,
                            ),
                            //height: 133.0,
                            width: screenWidth,
                            fit: BoxFit.cover),
                        Center(child: Container(width: 55.0, height: 55.0,
                          child: Icon(Icons.play_arrow, color: Colors.white,),
                          decoration: new BoxDecoration(
                          color: Color(0xff7e583e).withOpacity(.97),
                          shape: BoxShape.circle,
                        ),))
                      ],)),
                  Flexible(flex:1, child: Padding(
                      padding:
                      EdgeInsets.only(left: 23.0, right: 23.0, top: 10.0, bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Flexible(
                              child: Text(
                                widget.videoSnapShot['timing'] ?? '',
                                style: TextStyle(
                                  color: CustomColors.TEXT_COLOR,
                                  fontSize: 14.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              )),

                          Flexible(
                            child: Text(
                              widget.videoSnapShot['title'] ,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                                fontSize: 11.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),),
                        ],
                      )))
                ])
        )),
    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => VideoDetail(Video.fromSnapShot(widget.videoSnapShot, _imageUrl))));},);
  }
}
