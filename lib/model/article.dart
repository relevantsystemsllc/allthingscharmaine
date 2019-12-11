import 'package:cloud_firestore/cloud_firestore.dart';

class Article {
  Article({
    this.id,
    this.image,
    this.title,
    this.description,
    this.date,
  });

  final String id;
  final String title;
  final String description;
  final String image;
  final DateTime date;

  Article.fromSnapShot(DocumentSnapshot snapshot, String imageUrl):
        id = snapshot.documentID,
        title = snapshot['title'],
        description = snapshot['description'],
        date = DateTime.parse(snapshot['createdAt'].toDate().toString()),
        image = imageUrl;
}
