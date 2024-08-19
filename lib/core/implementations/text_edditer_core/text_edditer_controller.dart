import 'package:flutter/cupertino.dart';

class TextEdditerController extends TextEditingController {

  TextEdditerController({required super.text});

  @override
  TextSpan buildTextSpan(
      {required BuildContext context, TextStyle? style, required bool withComposing}) {
    return TextSpan();
  }


}