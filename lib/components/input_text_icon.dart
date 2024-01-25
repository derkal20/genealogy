import 'package:app_giao_hang/styles/app_color.dart';
import 'package:app_giao_hang/styles/app_text.dart';
import 'package:flutter/material.dart';

class InputTextIcon extends StatelessWidget {
  final String hintText;
  final Icon icon;
  const InputTextIcon({super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.gray),
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(width: 1, color: AppColors.gray),
              ),
            ),
            child: Center(
              child: icon,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 6, left: 17),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: AppText.large.copyWith(color: AppColors.gray)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
