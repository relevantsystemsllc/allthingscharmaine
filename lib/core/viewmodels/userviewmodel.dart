import 'dart:io';

import 'package:allthingscharmaine/core/model/user_signup_dto.dart';
import 'package:flutter/foundation.dart';

class UserViewModel extends ChangeNotifier {
  void addnames(String firstname, String lastname) {
    userSignupDTO.firstName = firstname;
    userSignupDTO.lastName = lastname;
    print("${userSignupDTO.firstName},${userSignupDTO.lastName}");
  }

  void addEmail(String email) {
    userSignupDTO.email = email;
    print(userSignupDTO.email);
  }

  void addPassword(String password) {
    userSignupDTO.password = password;
    print(userSignupDTO.password);
  }

  void addFile(File imageFile) {
    userSignupDTO.image = imageFile;
    print(userSignupDTO.image.uri.toString());
  }

  

  void addSecurityAnswers(
      String firstSecurityAnswer, String secondSecurityAnswer) {
    userSignupDTO.firstSecurityQuestion = firstSecurityAnswer;
    userSignupDTO.secSecurityQuestion = secondSecurityAnswer;
    print(
        "${userSignupDTO.firstSecurityQuestion} ${userSignupDTO.secSecurityQuestion}");
  }
}
