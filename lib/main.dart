import 'package:flutter/material.dart';
import 'package:services_app/constant/app_pallete.dart';
import 'package:services_app/pages/profile_page/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(backgroundColor: AppPallete.primaryColor),
        scaffoldBackgroundColor: AppPallete.backgroundColor,
      ),
      home: const ProfilePage(),
    );
  }
}
