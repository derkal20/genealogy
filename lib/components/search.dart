import 'package:app_giao_hang/styles/app_color.dart';
import 'package:app_giao_hang/styles/app_text.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(99), color: AppColors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: const Center(
              child: Icon(
                Icons.search,
                color: AppColors.gray,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 6, left: 5),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Tìm kiếm theo tên phả hệ',
                    hintStyle: AppText.small.copyWith(color: AppColors.gray)),
              ),
            ),
          ),
          Container(
            height: 31,
            width: 31,
            margin: const EdgeInsets.only(right: 4),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.orange),
            child: const Center(
              child: Icon(
                Icons.arrow_forward,
                color: AppColors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
