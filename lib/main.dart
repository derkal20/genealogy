import 'package:app_giao_hang/configs/app_route.dart';
import 'package:app_giao_hang/styles/app_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App gia pha',
      theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: AppColors.white,
          brightness: Brightness.light),
      routes: AppRoutes.pages,
      initialRoute: AppRoutes.splashScreen,
    );
  }
}
