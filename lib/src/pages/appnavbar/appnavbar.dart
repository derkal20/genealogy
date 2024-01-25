import 'package:family_tree/src/pages/event_page/event_page.dart';
import 'package:family_tree/src/pages/home_page/home_page.dart';
import 'package:family_tree/src/pages/profile_page/profile_page.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectIndex = 0;

  final _screens = [
    const HomeScreen(),
    const EventScreen(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_selectIndex],
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: SizedBox(height: 70, child: bottomNavigationBar))
        ],
      ),
    );
  }

  Widget get bottomNavigationBar {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectIndex,
      onTap: (i) => setState(() => _selectIndex = i),
      selectedItemColor: const Color(0xffE4A11B),
      unselectedItemColor: const Color(0xffB3B1B0),
      unselectedLabelStyle:
          const TextStyle(color: Color(0xff1C1C1E), fontSize: 14),
      items: const [
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/image1.png')),
            label: 'Trang chủ'),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/image2.png')), label: 'Sự kiện'),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/image3.png')),
            label: 'Tài khoản'),
      ],
    );
  }
}
