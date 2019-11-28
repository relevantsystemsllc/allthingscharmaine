
import 'package:allthingscharmaine/core/model/user_credit_card.dart';
import 'package:flutter/widgets.dart';

class UserCreditCardViewmodel extends ChangeNotifier {


  void addCard(String cardType, String cardNumber, String holderName,
      String expiryMonth, String expiryYear, bool isTrue) {
    userCreditCard.creditcardType = cardType;
    print(userCreditCard.creditcardType);
    userCreditCard.creditcardNumber = cardNumber;
    print(userCreditCard.creditcardNumber);
    userCreditCard.creditcardHolderName = holderName;
    print(userCreditCard.creditcardHolderName);
    userCreditCard.expiryMonth = expiryMonth;
    print(userCreditCard.expiryMonth);
    userCreditCard.expiryYear = expiryYear;
    print(userCreditCard.expiryYear);
    userCreditCard.defaultCard = isTrue;
    print(userCreditCard.defaultCard);
  }

  
}
