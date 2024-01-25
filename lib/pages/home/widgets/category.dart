import 'package:app_giao_hang/styles/app_color.dart';
import 'package:app_giao_hang/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatelessWidget {
  final String label;
  final String image;
  const Category({super.key, required this.label, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 46,
            width: 46,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: AppColors.orange.withOpacity(0.3),
              borderRadius: BorderRadius.circular(99),
              border: Border.all(
                  width: 1, color: AppColors.orange, style: BorderStyle.solid),
            ),
            child: Image.asset(image),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            label,
            style: AppText.medium.copyWith(color: AppColors.text),
          )
        ],
      ),
    );
  }
}
