import 'package:flutter/material.dart';
import 'package:text_edditer/core/widgets/bottom_navigator.dart';

class SavedDocuments extends StatelessWidget {
  const SavedDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigator(index: 1,),
    );
  }
}
