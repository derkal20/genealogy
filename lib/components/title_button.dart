import 'package:app_giao_hang/styles/app_color.dart';
import 'package:app_giao_hang/styles/app_text.dart';
import 'package:flutter/material.dart';

class TitleButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  const TitleButton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppText.mediumBold.copyWith(color: AppColors.black),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            'Xem thêm >',
            style: AppText.small.copyWith(color: AppColors.darkRed),
          ),
        )
      ],
    );
  }
}
