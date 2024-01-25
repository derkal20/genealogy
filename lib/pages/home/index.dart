import 'package:app_giao_hang/components/search.dart';
import 'package:app_giao_hang/components/title_button.dart';
import 'package:app_giao_hang/configs/app_icon.dart';
import 'package:app_giao_hang/configs/app_route.dart';
import 'package:app_giao_hang/pages/home/widgets/card_family.dart';
import 'package:app_giao_hang/pages/home/widgets/category.dart';
import 'package:app_giao_hang/pages/home/widgets/user.dart';
import 'package:app_giao_hang/styles/app_color.dart';
import 'package:app_giao_hang/styles/app_styles.dart';
import 'package:app_giao_hang/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        body: Stack(
          children: [
            Container(
              height: 338,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(gradient: AppColors.orangeOpacity),
            ),
            Positioned(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: AppStyles.paddingPage,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        User(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.login);
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Search(),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      viewportFraction: 0.85,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.2,
                      height: 150.0,
                      autoPlay: true,
                    ),
                    items: bannerItem.map((item) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(item.image,
                                    height: 150,
                                    width:
                                        MediaQuery.sizeOf(context).width - 60,
                                    fit: BoxFit.cover),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 124,
                    padding: AppStyles.paddingPage,
                    width: MediaQuery.sizeOf(context).width,
                    color: AppColors.white,
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(AppIcons.vt_multitasking),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Danh mục',
                              style: AppText.mediumBold
                                  .copyWith(color: AppColors.black),
                            )
                          ],
                        ),
                        Spacer(),
                        const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Category(
                                image: AppIcons.vt_tree,
                                label: 'Tạo cây phả hệ',
                              ),
                              Category(
                                image: AppIcons.vt_people,
                                label: 'Cây phả hệ của tôi',
                              ),
                            ]),
                        Spacer(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: AppStyles.paddingPage,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        TitleButton(title: 'Khám phá Gia tộc'),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: (240 + 10) *
                              (cardFamilyItem.length.toDouble() / 2)
                                  .ceilToDouble(),
                          child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.only(bottom: 60),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 0.71,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10),
                              itemBuilder: (context, index) {
                                final item = cardFamilyItem[index];
                                return CardFamily(
                                    countFamily: item.countFamily,
                                    title: item.title,
                                    location: item.location,
                                    image: item.image);
                              },
                              itemCount: cardFamilyItem.length),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class BannerItem {
  String image;
  BannerItem({
    required this.image,
  });
}

List<BannerItem> bannerItem = [
  BannerItem(
    image: AppIcons.im_family1,
  ),
  BannerItem(
    image: AppIcons.im_people1,
  ),
  BannerItem(
    image: AppIcons.im_people2,
  ),
  BannerItem(
    image: AppIcons.im_people3,
  ),
];

class CardFamilyItem {
  String image;
  String title;
  double countFamily;
  String location;
  CardFamilyItem({
    required this.title,
    required this.countFamily,
    required this.location,
    required this.image,
  });
}

List<CardFamilyItem> cardFamilyItem = [
  CardFamilyItem(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: AppIcons.im_people2,
  ),
  CardFamilyItem(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: AppIcons.im_people2,
  ),
  CardFamilyItem(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: AppIcons.im_people2,
  ),
  CardFamilyItem(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: AppIcons.im_people2,
  ),
  CardFamilyItem(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: AppIcons.im_people2,
  ),
  CardFamilyItem(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: AppIcons.im_people2,
  ),
  CardFamilyItem(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: AppIcons.im_people2,
  ),
  CardFamilyItem(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: AppIcons.im_people2,
  ),
  CardFamilyItem(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: AppIcons.im_people2,
  ),
];
