import 'package:app_giao_hang/configs/app_icon.dart';
import 'package:app_giao_hang/styles/app_color.dart';
import 'package:app_giao_hang/styles/app_text.dart';
import 'package:flutter/material.dart';

class CardFamily extends StatelessWidget {
  final double countFamily;
  final String title;
  final String image;
  final String location;

  const CardFamily(
      {super.key,
      required this.countFamily,
      required this.title,
      required this.location,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(14)),
      height: 234,
      width: MediaQuery.sizeOf(context).width / 2,
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              image,
              height: 122,
              width: MediaQuery.sizeOf(context).width / 2 - 35,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  width: 170,
                  height: 38,
                  child: Text(
                    title,
                    style: AppText.mediumBold.copyWith(color: AppColors.text),
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      AppIcons.ic_family,
                      height: 19,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '${countFamily.ceil().toString()} thành viên',
                      style: AppText.small.copyWith(color: AppColors.gray),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Image.asset(
                      AppIcons.ic_location,
                      height: 19,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: 126,
                      child: Text(
                        location,
                        style: AppText.small.copyWith(color: AppColors.gray),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
