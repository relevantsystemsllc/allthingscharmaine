import 'package:flutter/material.dart';

class QAItem extends StatelessWidget {
  final String imagePath;
  final String name;

  QAItem({@required this.imagePath, @required this.name})
      : assert(imagePath != null),
        assert(name != null);
        
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 115.0,
      width: screenWidth,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Image.asset(imagePath,
                height: 115.0, width: screenWidth, fit: BoxFit.cover),
            Center(
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
