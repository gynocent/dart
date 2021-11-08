import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeModel extends ChangeNotifier {
  bool _isBlackMode = SchedulerBinding.instance!.window.platformBrightness == Brightness.dark;

  /// The current total price of all items (assuming all items cost $42).
  bool get isBlackMode => _isBlackMode;
  Color get blackOrWhiteColor => _isBlackMode ? Colors.white : Colors.black;
  TextStyle get   listTile => TextStyle(color: blackOrWhiteColor);

  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void change(bool value) {
    _isBlackMode = value;
    notifyListeners();
  }
}