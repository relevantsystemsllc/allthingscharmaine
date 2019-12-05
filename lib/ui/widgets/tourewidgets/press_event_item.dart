import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class PressEventItem extends StatefulWidget {
  final DocumentSnapshot eventSnapShot;

  PressEventItem(this.eventSnapShot);

  @override
  _PressEventItemState createState() => _PressEventItemState();
}

  class _PressEventItemState extends State<PressEventItem>{
    String _imageUrl;

    @override
    void initState() {
      super.initState();
      StorageReference storageReference = FirebaseStorage.instance.ref().child(
          widget.eventSnapShot['image']);
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
    return SizedBox(
        height: 211.0,
        width: screenWidth,
        child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (_imageUrl!= null)? CachedNetworkImage(
                      imageUrl:_imageUrl,
                      height: 133.0,
                      width: screenWidth,
                      fit: BoxFit.cover):
                  Image.asset(
                    'assets/placeholder.png',
                    height: 133.0,
                    width: screenWidth,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 17.0, right: 17.0, top: 15.0, bottom: 10.0),
                    child: Text(
                      widget.eventSnapShot['title']??'',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: CustomColors.TEXT_COLOR,
                        fontSize: 13.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ])));
  }
}
