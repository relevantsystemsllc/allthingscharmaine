import 'package:allthingscharmaine/core/model/video.dart';
import 'package:allthingscharmaine/ui/screens/press/press_video_detail_page.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class PressVideoItem extends StatefulWidget {
  final DocumentSnapshot videoSnapShot;

  PressVideoItem(this.videoSnapShot);

  @override
  State createState() => _PressVideoItemState();
}

  class _PressVideoItemState extends State<PressVideoItem>{

    String _imageUrl = 'assets/placeholder.png';
    Video video;

    @override
    void initState() {
      super.initState();
      video =  Video.fromSnapShot(widget.videoSnapShot, _imageUrl);
      StorageReference storageReference =
      FirebaseStorage.instance.ref().child(widget.videoSnapShot['imageUrl']);
      storageReference.getDownloadURL().then((loc) {
        if (!mounted) return;
        setState(() {
          _imageUrl = loc;
          video.image = loc;
        });
      });
    }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(child: SizedBox(
      height: 90.0,
      width: screenWidth,
      child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                imageUrl: _imageUrl,
                placeholder: (context, url) =>Image.asset(
                  'assets/placeholder.png',
                  fit: BoxFit.cover,
                ),
            height: 84.0,
            width: 96,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 19.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(child: Container(width: 185,child: Text(
                  video?.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: CustomColors.TEXT_COLOR,
                      fontSize: 13.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                ),),),
                Text(
                  video?.viewCount.toString()+ ' views',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: CustomColors.TEXT_COLOR.withOpacity(.5),
                    fontSize: 10.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  video?.getPublishedDate(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: CustomColors.TEXT_COLOR.withOpacity(.5),
                    fontSize: 10.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),)],))),
    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => VideoDetail(Video.fromSnapShot(widget.videoSnapShot, _imageUrl))));},);
  }
}
