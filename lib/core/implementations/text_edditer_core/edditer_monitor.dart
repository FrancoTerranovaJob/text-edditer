import 'package:flutter/material.dart';
import 'package:text_edditer/core/implementations/text_edditer_core/text_edditer_controller.dart';

const int _defaultSpaceAmount = 1;

class EdditerMonitor {
  final TextEdditerController controller;
  final Color? underlineColor;
  final Color? highlightColor;
  final int spaceAmount;


  EdditerMonitor.newDocument()
      :
        controller = TextEdditerController(text: ''),
        underlineColor = null,
        highlightColor = null,
        spaceAmount = _defaultSpaceAmount;

  EdditerMonitor.fromStorage({
    required String text,
  })
      :
        controller = TextEdditerController(text: text),
        underlineColor = null,
        highlightColor = null,
        spaceAmount = _defaultSpaceAmount;
}


