import 'package:family_tree/screens/splSt1_screen.dart';
import 'package:family_tree/screens/splSt2_screen.dart';
import 'package:family_tree/screens/splSt3_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../layouts/appbar_layout.dart';
import '../layouts/navigator_layout.dart';
import '../provider/focusSearch_provider.dart';
import '../theme/colors_theme.dart';
import 'even_screen.dart';
import 'home_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List pages = [const HomeScreen(), const EventScreen(), const EventScreen()];

  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void onTapNavigatorBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent, systemNavigationBarIconBrightness: Brightness.dark, statusBarColor: Colors.transparent));

    final isFocus = Provider.of<FocusSearchProvider>(context).isFocus;

    return Scaffold(
      appBar: AppBarLayout(isFocus: isFocus),
      backgroundColor: ColorsTheme.white,
      body: pages[currentIndex],
      bottomNavigationBar: isFocus
          ? NavigatorLayout(
              currentIndex: currentIndex,
              onTapNavigatorBar: onTapNavigatorBar,
            )
          : null,
    );
  }
}
