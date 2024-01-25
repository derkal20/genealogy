import 'package:app_giao_hang/pages/main_page.dart';
import 'package:app_giao_hang/styles/app_color.dart';
import 'package:app_giao_hang/styles/app_text.dart';
import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Menus index;
  final Menus name;
  final IconData? icon;
  final IconData? iconActive;

  const BottomNavigationItem(
      {super.key,
      required this.onPressed,
      required this.index,
      required this.name,
      required this.icon,
      required this.iconActive,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          GestureDetector(
            onTap: onPressed,
            child: Container(
              child: Column(
                children: [
                  Icon(
                    index == name ? iconActive : icon,
                    color: index == name ? AppColors.orange : AppColors.gray,
                  ),
                  Text(
                    label,
                    style: AppText.medium.copyWith(
                      color: index == name ? AppColors.orange : AppColors.gray,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
