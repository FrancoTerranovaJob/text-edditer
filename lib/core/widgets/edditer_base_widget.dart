import 'package:flutter/material.dart';
import 'package:text_edditer/core/widgets/bottom_navigator.dart';

class EdditerBaseWidget extends StatelessWidget {
  final Widget _child;
  final int _selectedIndex;

  const EdditerBaseWidget(
      {super.key, required Widget child, required int selectedIndex})
      : _child = child,
        _selectedIndex = selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigator(
         index: _selectedIndex,
      ),
      drawer: Drawer(),
      appBar: AppBar(),
      body: SafeArea(
        child: _child,
      ),
    );
  }
}
