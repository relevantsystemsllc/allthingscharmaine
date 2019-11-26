import 'dart:ui';

class MyColors {
  Color pinkActive = HexColor("#ED9B9D");
  Color pinkInactive = HexColor("#F5CAC7");
  Color greyBg = HexColor("#FDEAEC");
  Color theGreen = HexColor("#AACC96");
  Color someYellow = HexColor("#FFD78F");
  Color iThinkItsPeach = HexColor("#E29464");
  Color facebookBlue = HexColor("#3b5998");
  Color twitterBlue = HexColor("#00acee");
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
