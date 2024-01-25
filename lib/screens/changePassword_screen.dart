import 'package:family_tree/constants/image-urls.dart';
import 'package:family_tree/constants/svg-urls.dart';
import 'package:family_tree/screens/login_screen.dart';
import 'package:family_tree/screens/opt_screen.dart';
import 'package:family_tree/theme/typography_theme.dart';
import 'package:family_tree/widgets/input_widget.dart';
import 'package:family_tree/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/colors_theme.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  late TextEditingController _passwordNewContro;
  late TextEditingController _rePasswordContro;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _passwordNewContro = TextEditingController();
    _rePasswordContro = TextEditingController();
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
            Center(
              child: Image.asset(
                ImgUrls.bgChangePass,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                'Đổi mật khẩu',
                style: TextStyle(fontSize: 26, color: ColorsTheme.yellow, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InputWidget(
                    textEditingController: _passwordNewContro,
                    hintText: 'Nhập mật khẩu mới',
                    isIcon: false,
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InputWidget(
                    isIcon: false,
                    textEditingController: _rePasswordContro,
                    hintText: 'Xác nhận mật khẩu mới',
                    isPassword: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButtonWidget(
              text: 'Đổi mật khẩu',
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
              },
            ),
          ]),
        ),
      ),
    );
  }
}
