import 'package:allthingscharmaine/core/model/article.dart';
import 'package:allthingscharmaine/ui/screens/press/press_article_detail_page.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class PressArticleItem extends StatefulWidget {
  final DocumentSnapshot articleSnapShot;

  PressArticleItem(this.articleSnapShot);
  @override
  _PressArticleItemState createState() => _PressArticleItemState();
}

  class _PressArticleItemState extends State<PressArticleItem> {
  String _imageUrl = 'assets/placeholder.png';

  @override
  void initState() {
    super.initState();
    StorageReference storageReference =
    FirebaseStorage.instance.ref().child(widget.articleSnapShot['image']);
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
        child: SizedBox(
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
                  CachedNetworkImage(
                      imageUrl: _imageUrl,
                      placeholder: (context, url) =>Image.asset(
                        'assets/placeholder.png',
                        fit: BoxFit.cover,
                      ),
                      height: 133.0,
                      width: screenWidth,
                      fit: BoxFit.cover),
                  /*Image.asset(
                    article?.image,
                    height: 133.0,
                    width: screenWidth,
                    fit: BoxFit.cover,
                  ),*/
                  Padding(
                    padding: EdgeInsets.only(
                        left: 17.0, right: 17.0, top: 15.0, bottom: 10.0),
                    child: Text(
                      widget.articleSnapShot['title'] ?? '',
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
                ]))),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => ArticleDetail(Article.fromSnapShot(widget.articleSnapShot, _imageUrl))));
    });
  }
}
