import 'dart:io';

import 'package:allthingscharmaine/core/viewmodels/userviewmodel.dart';
import 'package:allthingscharmaine/ui/widgets/nwagbawidgets/custom_appbar.dart';
import 'package:allthingscharmaine/utils/imageClipper.dart';
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import 'login_screen.dart';
import 'payment_pick_screen.dart';

class PickPhotoScreen extends StatefulWidget {
  @override
  _PickPhotoScreenState createState() => _PickPhotoScreenState();
}

class _PickPhotoScreenState extends State<PickPhotoScreen> {
  File _image;

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserViewModel>(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CustomAppbar(
              istrue: false,
              title: "your photo?",
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipOval(
                clipper: ImageClipper(),
                child: _image == null
                    ? SvgPicture.asset(
                        "assets/avatar.svg",
                        width: 100.0,
                        height: 100.0,
                        color: MyColors().pinkActive,
                        fit: BoxFit.fitWidth,
                      )
                    : Image.file(
                        _image,
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
              ),
            )
            // CircleAvatar(
            //   radius: 40,
            //   backgroundImage: NetworkImage("https://pbs.twimg.com/media/EGJJnGaVAAcbGch?format=jpg&name=small"),
            //   backgroundColor: Colors.transparent,
            // )
            ,
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 6.0, 8.0),
                    child: Container(
                      height: 50.0,
                      child: FlatButton(
                        onPressed: () {
                          getImage("CAMERA");
                        },
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "take a photo",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(color: MyColors().pinkActive),
                        ),
                        color: MyColors().pinkActive,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(6.0, 16.0, 16.0, 8.0),
                    child: Container(
                      height: 50.0,
                      child: FlatButton(
                        onPressed: () {
                          getImage("Gallery");
                        },
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "gallery",
                            style: TextStyle(
                                color: MyColors().pinkActive, fontSize: 12),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(color: MyColors().pinkActive),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Text(
                      "Skip",
                      style: TextStyle(color: MyColors().pinkInactive),
                    ),
                    onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                        },
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Text("next",
                        style: TextStyle(color: MyColors().pinkActive)),
                    onTap: () {
                      // uploadImage();
                      userProvider.addFile(_image);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PickPaymentMethodScreen()));
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<String> getImage(String fromWhere) async {
    var image;

    if (fromWhere == "CAMERA") {
      image = await ImagePicker.pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker.pickImage(source: ImageSource.gallery);
    }

    setState(() {
      _image = image;
    });
  }

  // Future uploadImage() async {
  //   StorageReference reference =
  //       FirebaseStorage.instance.ref().child("UserImages");
  //   StorageUploadTask uploadTask = reference.putFile(_image);
  //   var downloadURL = (await uploadTask.onComplete).ref.getDownloadURL();
  //   userSignupDTO.imageUri = downloadURL.toString();
  //   print("${userSignupDTO.imageUri}");
  // }
}
