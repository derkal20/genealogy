import 'package:app_giao_hang/components/bottom_navigator_Item.dart';
import 'package:app_giao_hang/pages/home/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex.index],
      bottomNavigationBar: MyBottomNavigation(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          }),
    );
  }

  final pages = <Widget>[
    Home(),
    const Center(child: Text('Message')),
    const Center(child: Text('Add')),
  ];
}

enum Menus { home, event, profile }

class MyBottomNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const MyBottomNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  BottomNavigationItem(
                      label: 'Trang chủ',
                      onPressed: () => onTap(Menus.home),
                      index: currentIndex,
                      name: Menus.home,
                      iconActive: Icons.home_outlined,
                      icon: Icons.home_outlined),
                  BottomNavigationItem(
                      label: 'Sự kiện',
                      onPressed: () => onTap(Menus.event),
                      index: currentIndex,
                      name: Menus.event,
                      iconActive: Icons.lightbulb_outline,
                      icon: Icons.lightbulb_outline),
                  BottomNavigationItem(
                      label: 'Tài khoản',
                      onPressed: () => onTap(Menus.profile),
                      index: currentIndex,
                      name: Menus.profile,
                      iconActive: Icons.person_outline,
                      icon: Icons.person_outline),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
