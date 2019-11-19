import 'package:cloud_firestore/cloud_firestore.dart';

class UserCreditCard {
  String creditcardType;
  String creditcardNumber;
  String creditcardHolderName;
  String expiryMonth;
  String expiryYear;
  bool defaultCard;
  final DocumentReference reference;

  UserCreditCard(
      {this.creditcardType,
      this.creditcardNumber,
      this.creditcardHolderName,
      this.expiryMonth,
      this.expiryYear,
      this.defaultCard,
      this.reference});

  UserCreditCard.fromMap(Map<dynamic, dynamic> map, {this.reference})
      : creditcardNumber = map["creditcardNumber"],
        creditcardHolderName = map["creditcardHolderName"],
        expiryMonth = map["expiryMonth"],
        defaultCard = map["defaultCard"],
        expiryYear = map["expiryYear"],
        creditcardType = map["creditcardType"];

  UserCreditCard.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["expiryYear"] = expiryYear;
    data["creditcardType"] = creditcardType;
    data["creditcardNumber"] = creditcardNumber;
    data["creditcardHolderName"] = creditcardHolderName;
    data["expiryMonth"] = expiryMonth;
    data["defaultCard"] = defaultCard;
   
    return data;
  }
}

final userCreditCard = UserCreditCard();
