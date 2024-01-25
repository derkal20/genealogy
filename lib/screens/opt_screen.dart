import 'package:family_tree/constants/image-urls.dart';
import 'package:family_tree/constants/svg-urls.dart';
import 'package:family_tree/screens/changePassword_screen.dart';
import 'package:family_tree/theme/typography_theme.dart';
import 'package:family_tree/widgets/input_widget.dart';
import 'package:family_tree/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/colors_theme.dart';
import '../widgets/otp_input_widget.dart';

class OptScreen extends StatefulWidget {
  const OptScreen({super.key});

  @override
  State<OptScreen> createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {
  late TextEditingController _opt1PhoneContro;
  late TextEditingController _opt2PhoneContro;
  late TextEditingController _opt3PhoneContro;
  late TextEditingController _opt4PhoneContro;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _opt1PhoneContro = TextEditingController();
    _opt2PhoneContro = TextEditingController();
    _opt3PhoneContro = TextEditingController();
    _opt4PhoneContro = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent,  systemNavigationBarIconBrightness: Brightness.dark,statusBarColor: Colors.transparent));

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
              height: 30,
            ),
            const Center(
              child: Text(
                'Xác thực tài khoản',
                style: TextStyle(fontSize: 26, color: ColorsTheme.yellow, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(color: ColorsTheme.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Nhập OTP nhận từ điện thoại',
                    style: TypographyTheme.heading4(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OtpInput(otpController: _opt1PhoneContro),
                      OtpInput(otpController: _opt2PhoneContro),
                      OtpInput(otpController: _opt3PhoneContro),
                      OtpInput(otpController: _opt4PhoneContro),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButtonWidget(
              text: 'Tiếp tục',
              onPressed: () {
                Navigator.pushNamed(context, '/forgot/change');
              },
            ),
            Center(
              heightFactor: 1.6,
              child: Image.asset(ImgUrls.bgOtp),
            )
          ]),
        ),
      ),
    );
  }
}
