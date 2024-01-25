import 'package:app_giao_hang/components/button.dart';
import 'package:app_giao_hang/components/input_text_icon.dart';
import 'package:app_giao_hang/configs/app_icon.dart';
import 'package:app_giao_hang/styles/app_color.dart';
import 'package:app_giao_hang/styles/app_styles.dart';
import 'package:app_giao_hang/styles/app_text.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 500,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(gradient: AppColors.brownOpacity),
            ),
            Positioned(
              top: 300,
              left: -160,
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.darkBrown.withOpacity(0.7),
                        Color.fromARGB(33, 228, 161, 27),
                        Color(0x00A1CC81)
                      ]),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
                child: SingleChildScrollView(
              child: Padding(
                padding: AppStyles.paddingPage,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(children: [
                      Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.only(right: 3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 1, color: AppColors.white),
                            color: AppColors.gray.withOpacity(0.6),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: AppColors.text,
                              size: 20,
                            ),
                          ))
                    ]),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Đăng nhập tài khoản',
                            style: AppText.heading1
                                .copyWith(color: AppColors.black),
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Hello, welcome to ',
                                style: AppText.header
                                    .copyWith(color: AppColors.black),
                                children: [
                                  TextSpan(
                                      text: 'Genealogy',
                                      style: AppText.header.copyWith(
                                          color: const Color(0xFF0B868C)))
                                ]),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Image.asset(AppIcons.im_family),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const InputTextIcon(
                            hintText: 'Nhập số điện thoại',
                            icon: Icon(Icons.phone_outlined),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          const InputTextIcon(
                            hintText: 'Nhập mật khẩu',
                            icon: Icon(Icons.lock),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                    Button(
                      title: 'Đăng nhập',
                      isGreen: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          child: Text(
                            'Quên mật khẩu?',
                            style:
                                AppText.small.copyWith(color: AppColors.gray),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bạn chưa có tài khoản? ',
                          style:
                              AppText.medium.copyWith(color: AppColors.black),
                        ),
                        GestureDetector(
                          child: Text('Đăng ký',
                              style: AppText.medium
                                  .copyWith(color: AppColors.orange)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(color: AppColors.gray),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            'Hoặc đăng nhập với',
                            style:
                                AppText.small.copyWith(color: AppColors.gray),
                          ),
                        ),
                        Expanded(
                          child: Divider(color: AppColors.gray),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Image.asset(AppIcons.ic_facebook),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          child: Image.asset(AppIcons.ic_google),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          child: Image.asset(AppIcons.ic_apple),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
