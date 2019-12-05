import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class CharmaineTvItem extends StatefulWidget {
  CharmaineTvItem({@required this.snapShot}) :assert(snapShot != null);
  final DocumentSnapshot snapShot;

  @override
  _CharmaineTvItemState createState() => _CharmaineTvItemState();

}
  class _CharmaineTvItemState extends State<CharmaineTvItem>{
  String _imageUrl;
  @override
  void initState() {
    super.initState();
    StorageReference storageReference = FirebaseStorage.instance.ref().child(widget.snapShot['image']);
    storageReference.getDownloadURL().then((loc) {
      if (!mounted) return;
      setState((){
        _imageUrl = loc;
      });
    } );
  }
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 105.0,
      width: screenWidth,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      child: Stack(
        children: [
          (_imageUrl!= null)? CachedNetworkImage(
              imageUrl:_imageUrl,
              height: 105.0,
              width: screenWidth,
              fit: BoxFit.cover):
          Image.asset('assets/placeholder.png',
              height: 105.0,
              width: screenWidth,
              fit: BoxFit.cover),
        Center(child: Text(widget.snapShot['categoryName'], style: TextStyle(color: Colors.white, fontSize: 14.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500),),),

        ],
      ),),
    );
  }
}