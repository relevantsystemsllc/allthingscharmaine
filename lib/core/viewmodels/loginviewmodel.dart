import 'package:allthingscharmaine/locator.dart';
import 'package:allthingscharmaine/core/model/user_credit_card.dart';
import 'package:allthingscharmaine/core/model/user_signup_dto.dart';
import 'package:allthingscharmaine/core/services/API.dart';
import 'package:flutter/widgets.dart';

class LoginViewmodel extends ChangeNotifier {
  final Api api = locator<Api>();
  
    Future signUpUserNSaveData() async {
      api.signUp(userSignupDTO.email, userSignupDTO.password).then((user) async {
        await api.uploadImage(userSignupDTO.image);
  
  
  
        api.saveUserData("users",userSignupDTO.toJson(),userCreditCard.toJson());
  
        api.saveUserCreditcard("CreditCards", userCreditCard.toJson());
  
  
      });
    }
  
    Future signInUser(String email, String password)async{
  
      await api.signIn(email, password);
  
    }
  
    Future signUserOut()async{
      api.signOut();
    }
  
}
