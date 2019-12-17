import 'package:cloud_firestore/cloud_firestore.dart';
class Event {
  Event({
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

  Event.fromSnapShot(DocumentSnapshot snapshot, String imageUrl):
        id = snapshot.documentID,
        title = snapshot['title'],
        description = snapshot['text'],
        date = DateTime.parse(snapshot['eventDate'].toDate().toString()),
        image = imageUrl;


}
