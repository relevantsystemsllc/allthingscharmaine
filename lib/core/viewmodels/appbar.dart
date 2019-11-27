import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppBarState extends ChangeNotifier{

  AppBarState(this._bgColor, this._iconColor):assert(_bgColor!=null), assert(_iconColor!=null);

  Color _bgColor;
  Color _iconColor;

  set bgColor(Color color) {
    _bgColor = color;
    notifyListeners();
  }

  Color get bgColor => _bgColor;

  set iconColor(Color color) {
    _iconColor = color;
    notifyListeners();
  }

  Color get iconColor => _iconColor;

}