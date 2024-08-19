import 'package:flutter/material.dart';

class PaperCard extends StatelessWidget {
  final Widget _child;

  const PaperCard({super.key, required Widget child}) : _child = child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: LinearBorder.none,

      child: Padding(
        padding: const EdgeInsets.all(10),
        child: _child,
      ),
    );
  }
}
