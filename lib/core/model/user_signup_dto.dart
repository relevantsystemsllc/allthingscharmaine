import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserSignupDTO {
  
  String firstName;
  String lastName;
  String email;
  String password;
  String imageUri;
  File image;
  String firstSecurityQuestion;
  String secSecurityQuestion;
  final DocumentReference reference;

  UserSignupDTO(
      {this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.imageUri,
      this.firstSecurityQuestion,
      this.secSecurityQuestion,
      this.reference});

  UserSignupDTO.fromMap(Map<dynamic, dynamic> map, {this.reference})
      : firstName = map["firstName"],
        lastName = map["lastName"],
        email = map["email"],
        password = map["password"],
        imageUri = map["imageUri"],
        firstSecurityQuestion = map["firstSecurityQuestion"],
        secSecurityQuestion = map["secSecurityQuestion"];

  UserSignupDTO.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["firstName"] = firstName;
    data["lastName"] = lastName;
    data["email"] = email;
    data["password"] = password;
    data["imageUri"] = imageUri;
    data["firstSecurityQuestion"] = firstSecurityQuestion;
    data["secSecurityQuestion"] = secSecurityQuestion;

    return data;
  }
}

final userSignupDTO = UserSignupDTO();
