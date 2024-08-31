import 'package:flutter/material.dart';
import 'package:text_edditer/core/implementations/text_edditer_core/text_edditer_controller.dart';

const int _defaultSpaceAmount = 1;

class EdditerMonitor {
  final TextEdditerController controller;
  final Color? underlineColor;
  final Color? highlightColor;
  final int spaceAmount;

  EdditerMonitor.newDocument()
      : controller = TextEdditerController(text: ''),
        underlineColor = null,
        highlightColor = null,
        spaceAmount = _defaultSpaceAmount {
    controller.addListener(_listenTextChanged);
  }

  EdditerMonitor.fromStorage({
    required String text,
  })  : controller = TextEdditerController(text: text),
        underlineColor = null,
        highlightColor = null,
        spaceAmount = _defaultSpaceAmount {
    controller.addListener(_listenTextChanged);
  }

  void _listenTextChanged() {
    if (controller.getOffset() != null) {
      controller.removeListener(_listenTextChanged);
      controller.selection = TextSelection.fromPosition(
          TextPosition(offset: controller.getOffset()! + 1));
      controller.resetOffset();
      controller.addListener(_listenTextChanged);
    }
  }
}
