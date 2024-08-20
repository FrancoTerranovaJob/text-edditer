import 'package:flutter/material.dart';
import 'package:text_edditer/application/theme/app_theme.dart';
import 'package:text_edditer/feature/editing/editing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      home:  EditingPage(),
    );
  }
}


