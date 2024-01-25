import 'package:family_tree/constants/image-urls.dart';
import 'package:family_tree/constants/svg-urls.dart';
import 'package:family_tree/theme/typography_theme.dart';
import 'package:family_tree/widgets/input_widget.dart';
import 'package:family_tree/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/colors_theme.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _numberPhoneContro;
  late TextEditingController _passwordContro;
  late TextEditingController _userNameContro;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _numberPhoneContro = TextEditingController();
    _passwordContro = TextEditingController();
    _userNameContro = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent, systemNavigationBarIconBrightness: Brightness.dark, statusBarColor: Colors.transparent));

    return Scaffold(
      backgroundColor: ColorsTheme.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.zero,
          child: Stack(
            children: [
              Image.asset(
                ImgUrls.bgRegister,
                width: mq.width,
                fit: BoxFit.cover,
              ),
              Positioned(
                right: 15,
                top: 50,
                child: Image.asset(
                  ImgUrls.iconFlower,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: ColorsTheme.white,
                        borderRadius: BorderRadius.all(Radius.circular(9999)),
                      ),
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: ColorsTheme.greyLight),
                          child: const Icon(Icons.arrow_back_ios_sharp, color: ColorsTheme.grey)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Đăng ký tài khoản',
                    style: TextStyle(fontSize: 26),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text.rich(TextSpan(
                    text: 'Hello, welcome to ',
                    style: TypographyTheme.heading1(),
                    children: [
                      const TextSpan(text: 'FamilyTree', style: TextStyle(color: ColorsTheme.greenLight)),
                    ],
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    heightFactor: 1.4,
                    child: Image.asset(
                      ImgUrls.logo,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        InputWidget(
                          icon: SvgUrls.iconPhone,
                          isIcon: true,
                          textEditingController: _numberPhoneContro,
                          hintText: 'Nhập số điện thoại',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InputWidget(
                          textEditingController: _userNameContro,
                          icon: SvgUrls.iconUserPen,
                          hintText: 'Nhập tên của bạn',
                          isIcon: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InputWidget(
                          textEditingController: _passwordContro,
                          icon: SvgUrls.iconLock,
                          hintText: 'Nhập mật khẩu',
                          isPassword: true,
                          isIcon: true,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextButtonWidget(
                    text: 'Đăng ký',
                    color: ColorsTheme.greenDark,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Bạn chưa có tài khoản? ', style: TypographyTheme.text1(color: ColorsTheme.greyLight)),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text('Đăng nhập', style: TypographyTheme.heading4(color: ColorsTheme.yellow))),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Container(
                        height: 1,
                        decoration: BoxDecoration(border: Border.all(width: 1, color: ColorsTheme.greyLight)),
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Hoặc đăng nhập với',
                        style: TypographyTheme.text2(color: ColorsTheme.greyLight),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 1,
                        decoration: BoxDecoration(border: Border.all(width: 1, color: ColorsTheme.greyLight)),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(ImgUrls.iconFace),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(ImgUrls.iconGoogle),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(ImgUrls.iconIos),
                    ],
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
