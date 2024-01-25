import 'dart:html';


import 'package:flutter/material.dart';
import 'package:nhom_11/Index-2.dart';
import 'package:nhom_11/person_detail.dart';

import 'Index-1.dart';


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
      home: Scaffold(
        body: Detail(),
      ),
    );
  }
}

