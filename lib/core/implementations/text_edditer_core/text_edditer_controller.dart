import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextEdditerController extends TextEditingController {
  bool _highlightColor;

  int? _highLightOffset;

  TextEdditerController({
    required super.text,
    bool highlightColor = false,
  }) : _highlightColor = highlightColor;

  @override
  TextSpan buildTextSpan(
      {required BuildContext context,
      TextStyle? style,
      required bool withComposing}) {
    print(value.selection);
    if (value.selection.isValid) {
      print(value.selection.textBefore(text));
      print(value.selection.textInside(text));
      print(value.selection.textAfter(text));
      print(selection.extentOffset);
      print(value.selection.extentOffset);
    }
    var string = text;
    final re = RegExp(r'(<h.*?[\s\S]*?h>)|(\w*\W?)|\s');

    List<Match> strings = re.allMatches(text).toList();
      List<String?> st = strings.map((e) => e.group(0)).toList();
    return TextSpan(
      style: style,
      children: st.map((st) {

        return TextSpan(
          text: st,
          style: st!.startsWith('<h') ? style?.copyWith(
              backgroundColor: Colors.yellow.withOpacity(0.4),
              color: Theme.of(context).colorScheme.secondary,
          )  : style
        );
      }).toList(),
    );
  }

  void enableHighlightColor() {
    _highLightOffset = value.selection.extentOffset;

    text = StringUtils.addCharAtPosition(
        text, '<hh>', value.selection.extentOffset);
  }

  int? getHighlightOffset() {
    return _highLightOffset;
  }

  void resetHighlightOffset() {
    _highLightOffset = null;
  }
}
