import 'package:family_tree/constants/image-urls.dart';
import 'package:family_tree/constants/svg-urls.dart';
import 'package:family_tree/screens/opt_screen.dart';
import 'package:family_tree/theme/typography_theme.dart';
import 'package:family_tree/widgets/input_widget.dart';
import 'package:family_tree/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/colors_theme.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late TextEditingController _numberPhoneContro;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _numberPhoneContro = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent, systemNavigationBarIconBrightness: Brightness.dark, statusBarColor: Colors.transparent));

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.zero,
          child: Stack(
            children: [
              Positioned(
                right: mq.width * .15,
                top: mq.height * .07,
                child: Image.asset(
                  ImgUrls.bgForgetPass_1,
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
                  Center(
                    child: Image.asset(
                      ImgUrls.bgForgetPass_2,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Center(
                    child: Text(
                      'Quên mật khẩu',
                      style: TextStyle(fontSize: 26, color: ColorsTheme.yellow, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(color: ColorsTheme.white, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Nhập số điện thoại đã đăng ký vào ô bên dưới',
                          style: TypographyTheme.heading4(),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InputWidget(
                          icon: SvgUrls.iconPhone,
                          textEditingController: _numberPhoneContro,
                          hintText: 'Nhập số điện thoại',
                          isIcon: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButtonWidget(
                    text: 'Gửi',
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot/otp');
                    },
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
