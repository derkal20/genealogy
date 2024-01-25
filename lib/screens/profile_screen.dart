import 'package:family_tree/constants/image-urls.dart';
import 'package:family_tree/constants/svg-urls.dart';
import 'package:family_tree/model/clan_model.dart';
import 'package:family_tree/theme/colors_theme.dart';
import 'package:family_tree/theme/typography_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  final ClanList user;

  const ProfileScreen({super.key, required this.user});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsTheme.yellow,
        centerTitle: true,
        title: Text(
          'Chi tiết gia phả',
          style: TypographyTheme.heading3(color: ColorsTheme.white),
        ),
        leadingWidth: 80,
        leading: Center(
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(9999), color: ColorsTheme.white),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: ColorsTheme.grey,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.symmetric(vertical: 8),
              color: ColorsTheme.white,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(border: Border.all(color: ColorsTheme.greenDark, width: 2), shape: BoxShape.circle),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(9999)),
                              child: Image.asset(
                                widget.user.image,
                                fit: BoxFit.cover,
                                height: 86,
                                width: 86,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                          right: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(ImgUrls.iconShare),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Chia sẻ',
                                style: TypographyTheme.heading4(),
                              )
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.user.userName,
                    style: TypographyTheme.heading3(color: ColorsTheme.grey, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImgUrls.iconGrUser,
                        width: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${widget.user.member.toString()} thành viên',
                        style: TypographyTheme.heading4(),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'ID: 77nh',
                        style: TypographyTheme.heading4(color: ColorsTheme.grey),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              color: ColorsTheme.white,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Thông tin',
                  style: TypographyTheme.heading3(),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(
                          SvgUrls.iconBlur,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SvgPicture.asset(
                          SvgUrls.iconDate,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SvgPicture.asset(
                          SvgUrls.iconAddress,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Người tạo',
                          style: TypographyTheme.text1(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Ngày tạo',
                          style: TypographyTheme.text1(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Địa chỉ',
                          style: TypographyTheme.text1(),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.user.creatorName,
                          style: TypographyTheme.heading4(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          widget.user.dayCreater,
                          style: TypographyTheme.heading4(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          widget.user.address,
                          style: TypographyTheme.heading4(),
                        )
                      ],
                    ),
                  ],
                ),
              ]),
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              color: ColorsTheme.white,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Thông tin',
                  style: TypographyTheme.heading3(),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.user.biography,
                  style: TypographyTheme.text1(),
                )
              ]),
            ),
            Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: ColorsTheme.yellow, width: 2)),
                  color: ColorsTheme.white,
                ),
                child: Center(
                  child: Text(
                    'Cây gia phả',
                    style: TypographyTheme.heading4(color: ColorsTheme.yellow),
                  ),
                )),
            Center(
              heightFactor: 1.2,
              child: Image.asset(widget.user.imageTree),
            )
          ],
        ),
      ),
    );
  }
}
