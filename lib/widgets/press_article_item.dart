import 'package:allthingscharmaine/model/article.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class PressArticleItem extends StatelessWidget {
  final Article article;

  PressArticleItem(this.article);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
        height: 211.0,
        width: 302,
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
                  Image.asset(
                    article?.image,
                    height: 133.0,
                    width: 302,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 17.0, right: 17.0, top: 15.0, bottom: 10.0),
                    child: Text(
                      article?.description,
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
