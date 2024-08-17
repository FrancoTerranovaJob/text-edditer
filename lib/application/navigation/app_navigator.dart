import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  static Future<dynamic> pushReplace(
      {required Widget page,
      required BuildContext context,
      Function(Object? value)? then}) async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    ).then((value) {
      if (then != null) {
        then(value);
      }
    });
  }
}
