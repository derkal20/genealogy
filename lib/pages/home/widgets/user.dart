import 'package:app_giao_hang/styles/app_color.dart';
import 'package:app_giao_hang/styles/app_text.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  final Function()? onTap;
  const User({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                height: 48,
                width: 48,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.white),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Xin chào,',
                  style: AppText.medium
                      .copyWith(color: AppColors.white, height: 1.3),
                ),
                Text(
                  'Võ Thị Thu Thúy!',
                  style: AppText.mediumBold
                      .copyWith(color: AppColors.white, height: 1.3),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 26,
              width: 78,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(99)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: AppColors.orange,
                        borderRadius: BorderRadius.circular(99)),
                    child:
                        const Icon(Icons.add, color: AppColors.white, size: 15),
                  ),
                  Text(
                    'Tạo mới',
                    style:
                        AppText.smallBold.copyWith(color: AppColors.darkBrown),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Stack(
              children: [
                const Icon(Icons.notification_important_sharp,
                    color: AppColors.white),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(99)),
                      child: Center(
                        child: Text(
                          '1',
                          style:
                              AppText.caption.copyWith(color: AppColors.white),
                        ),
                      ),
                    ))
              ],
            ),
          ],
        )
      ],
    );
  }
}
