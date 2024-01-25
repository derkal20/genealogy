import 'package:family_tree/constants/svg-urls.dart';
import 'package:family_tree/theme/typography_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme/colors_theme.dart';

class NavigatorLayout extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTapNavigatorBar;
  const NavigatorLayout({Key? key, required this.currentIndex, this.onTapNavigatorBar});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;

    return Container(
      height: mq.height * 0.12,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        iconSize: 32,
        backgroundColor: ColorsTheme.white,
        selectedItemColor: ColorsTheme.yellow,
        selectedLabelStyle: TypographyTheme.heading4(),
        unselectedLabelStyle: TypographyTheme.heading4(),
        unselectedItemColor: ColorsTheme.grey,
        currentIndex: currentIndex,
        onTap: onTapNavigatorBar,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                SvgUrls.iconHome,
                color: currentIndex == 0 ? ColorsTheme.yellow : ColorsTheme.grey,
              ),
            ),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                SvgUrls.iconBuld,
                color: currentIndex == 1 ? ColorsTheme.yellow : ColorsTheme.grey,
              ),
            ),
            label: 'Sự kiện',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                SvgUrls.iconUser,
                color: currentIndex == 2 ? ColorsTheme.yellow : ColorsTheme.grey,
              ),
            ),
            label: 'Tài khoản',
          ),
        ],
      ),
    );
  }
}
