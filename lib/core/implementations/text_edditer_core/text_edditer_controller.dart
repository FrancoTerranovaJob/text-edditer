import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextEdditerController extends TextEditingController {
  int? _cursorOffset;
  final String _highlightSeparator = '\u00A0';
   Color _highlightColor = Colors.yellow ;
  final RegExp _regExp = RegExp(r'(\u00A0.*?[\s\S]*?\u00A0)|(\w*\W?)|\s');
  final List<Color> _highlights = [];

  TextEdditerController({
    required super.text,

  }) ;

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
    /*

      ["esto es un texto texto texto texto.
      Por eso en el texto del texto en el texto por el texto..."]




  */

    List<Match> strings = _regExp.allMatches(text).toList();
    List<String?> st = strings.map((e) => e.group(0)).toList();
    int highlightIndex = -1;
    return TextSpan(
      style: style,
      children: st.map((st) {
        if (st!.startsWith(_highlightSeparator)) {
          highlightIndex++;
        }
        TextStyle textStyle = _getStyle(style!, st, context,highlightIndex);

        return TextSpan(
          text: st,
          style: textStyle,
        );
      }).toList(),
    );
  }

  void enableHighlightColor({Color? highlightColor}) {
    _highlightColor = highlightColor ?? _highlightColor;
    _cursorOffset = value.selection.extentOffset;
    _highlights.add(_highlightColor);
    text = StringUtils.addCharAtPosition(
        text, '$_highlightSeparator$_highlightSeparator', _cursorOffset!);
  }

  int? getOffset() {
    return _cursorOffset;
  }

  void resetOffset() {
    _cursorOffset = null;
  }

  TextStyle _getStyle(TextStyle defaultStyle, String st, BuildContext context, int highlightIndex) {
    TextDecoration textDecoration = TextDecoration.underline;

    TextStyle textStyle = defaultStyle;
    if (st.startsWith(_highlightSeparator)) {
      textStyle = textStyle.copyWith(
        backgroundColor: _highlights[highlightIndex],
        color: Theme.of(context).colorScheme.secondary,
      );
    }
    return textStyle;
  }
}

class testFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    print('asdasd');
    return TextEditingValue();
  }
}
