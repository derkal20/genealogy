import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_giao_hang/configs/app_icon.dart';
import 'package:app_giao_hang/pages/onboarding/index.dart';
import 'package:app_giao_hang/styles/app_color.dart';
import 'package:app_giao_hang/styles/app_text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedSplashScreen(
        centered: true,
        splashIconSize: double.infinity,
        splash: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            children: [
              const Spacer(
                flex: 12,
              ),
              SizedBox(
                width: 230,
                height: 280,
                child: Center(
                    child: Image.asset(AppIcons.im_logo, fit: BoxFit.cover)),
              ),
              const Spacer(
                flex: 15,
              ),
              Text(
                'Chào mừng bạn đến với FamilyTree',
                style: AppText.medium
                    .copyWith(color: AppColors.black.withOpacity(0.47)),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
        nextScreen: const Onboarding(),
      ),
    );
  }
}
