
import 'dart:io';

import 'package:allthingscharmaine/core/model/user_signup_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Api {
  final Firestore _db = Firestore.instance;
  CollectionReference ref;

  Api();

  Future<void> signUp(String email, String passsword) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: passsword);
  }

  Future<void> signIn(String email, String password) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }

  uploadImage(File image) async {
    StorageReference reference =
        FirebaseStorage.instance.ref().child(image.path.toString());
    StorageUploadTask uploadTask = reference.putFile(image);

    StorageTaskSnapshot downloadUrl = (await uploadTask.onComplete);

    // String downloadURL =
    //     (await uploadTask.onComplete).ref.getDownloadURL().toString();

    final String url = (await downloadUrl.ref.getDownloadURL());

    userSignupDTO.imageUri = url;
  }

  saveUserData(String path, Map data, Map cardData) async {
    ref = _db.collection(path);
    ref.add(data).then((onValue) {
      onValue.collection("UserCreditCard").add(cardData);
      print(ref.document().documentID.toString());
    });
  }

  saveUserCreditcard(String path, Map data) async {
    ref = _db.collection(path);
    ref.add(data);
  }

  void signOut() async {
    await FirebaseAuth.instance.signOut();
  }


   // Get the initial List of events available in the event collection
  Future<List<DocumentSnapshot>> getInitialEventList(int batchSize) async {
    QuerySnapshot _querySnapshot = await _db.collection('event')
        .where('eventDate', isGreaterThanOrEqualTo: DateTime.now())
        .orderBy('eventDate').limit(batchSize).getDocuments();
    return _querySnapshot.documents;
  }

  /// Load more data from event list. This is used to implement pagination on the List
  Future<List<DocumentSnapshot>> getMoreEventList(DocumentSnapshot lastElement, int batchSize) async {
    QuerySnapshot _querySnapshot = await _db.collection('event')
        .where('eventDate', isGreaterThanOrEqualTo: DateTime.now())
        .orderBy('eventDate').startAfterDocument(lastElement).limit(batchSize).getDocuments();
    return _querySnapshot.documents;
  }

  // Get the initial List of articles available in the article collection
  Future<List<DocumentSnapshot>> getInitialArticleList(int batchSize) async {
    QuerySnapshot _querySnapshot = await _db.collection('article')
        .orderBy('createdAt').limit(batchSize).getDocuments();
    return _querySnapshot.documents;
  }

  // Get the initial List of events available in the event collection
  Future<List<DocumentSnapshot>> getMoreArticleList(DocumentSnapshot lastElement, int batchSize) async {
    QuerySnapshot _querySnapshot = await _db.collection('article')
        .orderBy('createdAt').startAfterDocument(lastElement).limit(batchSize).getDocuments();
    return _querySnapshot.documents;
  }

  // Get the initial List of videos available in the video collection
  Future<List<DocumentSnapshot>> getInitialVideoList(int batchSize) async {
    QuerySnapshot _querySnapshot = await _db.collection('video').orderBy('createdAt', descending: true).limit(batchSize).getDocuments();
    return _querySnapshot.documents;
  }

  // Get more from List of videos available in the video collection
  Future<List<DocumentSnapshot>> getMoreVideosList(DocumentSnapshot lastElement, int batchSize) async {
    QuerySnapshot _querySnapshot = await _db.collection('video')
        .orderBy('createdAt', descending: true).startAfterDocument(lastElement).limit(batchSize).getDocuments();
    return _querySnapshot.documents;
  }
}

