import 'package:family_tree/src/pages/appnavbar/appnavbar.dart';
import 'package:family_tree/src/pages/edit_profile_page/edit_profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const NavScreen(),
    );
  }
}
