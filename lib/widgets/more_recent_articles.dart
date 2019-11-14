import 'package:allthingscharmaine/model/article.dart';
import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:allthingscharmaine/widgets/press_article_item.dart';
import 'package:flutter/material.dart';

class MoreRecentArticles extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List listData = getEventData();
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(right: 2.0),
                        child: Text('most recent articles',
                            style: TextStyle(
                              color: CustomColors.TITLE_COLOR,
                              fontSize: 20.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ))),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12.0,
                      color: CustomColors.TITLE_COLOR,
                    )
                  ]),
                ),
                Text('view all',
                    style: TextStyle(
                      color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                      fontSize: 12.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ))
              ],
            ),
            SizedBox(
              height: 19,
            ),
            PressArticleItem(listData[0]),
            SizedBox(height: 15, ),
            PressArticleItem(listData[1]),
          ],
        ));
  }

  List<Article> getEventData() {
    List<Article> data = [];
    data.add(Article(
      id: 1,
      image: "assets/buffet-chicken-delicious-5916.jpg",
      title: "Article 1",
      description: "Charmaine Neque porro quisquam est qui dolorem .",
    ));
    data.add(Article(
      id: 2,
      image: "assets/beach-daylight-fun-1430675.jpg",
      title: "Article 2",
      description: "Charmaine Neque porro quisquam est qui dolorem .",
    ));
    return data;
  }
}
