import 'package:flutter/material.dart';
import 'package:text_edditer/application/navigation/app_navigator.dart';
import 'package:text_edditer/feature/editing/editing_page.dart';
import 'package:text_edditer/feature/saved_documents/saved_documents.dart';

class BottomNavigator extends StatelessWidget {
  final int _index;

  const BottomNavigator({
    super.key,
    required int index,
  }) : _index = index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconSize: 20,
        currentIndex: _index,
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.secondary,
        ),
        unselectedIconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
        ),
        onTap: (index) {
          switch (index) {
            case 0:
              AppNavigator.pushReplace(
                  page: const EditingPage(), context: context);
            case 1:
              AppNavigator.pushReplace(
                  page: const SavedDocuments(), context: context);
          }
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Editar',
              activeIcon: Icon(
                Icons.edit_rounded,
                size: 24,
              ),
              icon: Icon(
            Icons.edit_rounded,
          )),
          BottomNavigationBarItem(label: 'Guardados', icon: Icon(Icons.save_rounded),activeIcon: Icon(Icons.save_rounded,size: 24,)),
        ]);
  }
}
