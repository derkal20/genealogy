import 'package:app_giao_hang/components/button.dart';
import 'package:app_giao_hang/configs/app_route.dart';
import 'package:app_giao_hang/pages/onboarding/index.dart';
import 'package:app_giao_hang/styles/app_color.dart';
import 'package:app_giao_hang/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatelessWidget {
  final String icon;
  final String image;
  final String title;
  final String content;
  final int indexPage;
  final PageController controller;
  const IntroPage(
      {super.key,
      required this.icon,
      required this.indexPage,
      required this.controller,
      required this.title,
      required this.content,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  introPageItem.length == indexPage
                      ? Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: 352,
                          decoration: const BoxDecoration(
                              gradient: AppColors.orangeGreen),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset(
                              image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: 352,
                          color: AppColors.orange,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset(
                              image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Text(title,
                  style: AppText.heading0Bold.copyWith(color: AppColors.black)),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                icon,
                height: 45,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 326,
                child: Text(
                  content,
                  style: AppText.medium.copyWith(color: AppColors.gray),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                      dotHeight: 6,
                      radius: 10,
                      dotWidth: 6,
                      dotColor: Colors.grey,
                      activeDotColor: AppColors.orange),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 82,
        padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: introPageItem.length == indexPage
            ? Button(
                title: 'Bắt đầu',
                onTap: () {
                  if (introPageItem.length == indexPage) {
                    Navigator.of(context)
                        .pushReplacementNamed(AppRoutes.mainPage);
                  }
                },
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Text(
                      'Bỏ qua',
                      style: AppText.large.copyWith(color: AppColors.orange),
                    ),
                    onTap: () {
                      controller.animateToPage(
                        introPageItem.length,
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      height: 62,
                      width: 62,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.orange),
                      child: const Icon(Icons.arrow_forward,
                          color: AppColors.white),
                    ),
                    onTap: () {
                      if (controller.hasClients) {
                        controller.animateToPage(indexPage,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut);
                      }
                    },
                  )
                ],
              ),
      ),
    );
  }
}
