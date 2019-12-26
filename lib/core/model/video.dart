import 'package:cloud_firestore/cloud_firestore.dart';

class Video {
  Video(
      {this.id,
      this.image,
      this.title,
      this.description,
      this.duration,
      this.viewCount,
      this.time,
      this.category});

  final String id;
  final String title;
  final String description;
        String image;
  final String duration;
  final int viewCount;
  final DateTime time;
  final List<String> category;

  Video.fromSnapShot(DocumentSnapshot snapshot, String imageUrl)
      : id = snapshot.documentID,
        title = snapshot['title'],
        description = snapshot['text'],
        duration = snapshot['timing'],
        viewCount = snapshot['viewCount'],
        time = DateTime.parse(snapshot['createdAt'].toDate().toString()),
        image = imageUrl,
        category = snapshot['category']?.cast<String>();

  Video.fromSnapShotOnly(DocumentSnapshot snapshot)
      : id = snapshot.documentID,
        title = snapshot['title'],
        description = snapshot['text'],
        duration = snapshot['timing'],
        viewCount = snapshot['viewCount'],
        time = DateTime.parse(snapshot['createdAt'].toDate().toString()),
        image = snapshot['imageUrl'],
        category = snapshot['category']?.cast<String>();
  String getPublishedDate(){
    if (time ==null) return '';
    Duration duration = DateTime.now().difference(time);
    if(duration.inMinutes < 60){
      return duration.inMinutes <= 1? (duration.inMinutes.toString() +' min ago') : duration.inMinutes.toString() +' mins ago';
    }else if(duration.inHours < 24){
      return duration.inHours == 1?duration.inHours.toString() +' hour ago' : duration.inHours.toString() +' hours ago';
    }else if(duration.inDays < 31){
      return duration.inDays == 1?duration.inDays.toString() +' day ago' : duration.inDays.toString() +' days ago';
    }else if(duration.inDays < 365){
      return (duration.inDays/31)== 1?(duration.inDays/31).toString()+' month ago' : (duration.inDays/31).toString()+' months ago';
    }else{
      return (duration.inDays/365) == 1? (duration.inDays/365).toString()+' year ago':(duration.inDays/365).toString()+' years ago';
    }
  }
}
