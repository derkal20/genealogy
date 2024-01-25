import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/typography_theme.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController otpController;

  const OtpInput({Key? key, required this.otpController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: TextFormField(
        controller: otpController,
        keyboardType: TextInputType.number,
        style: TypographyTheme.headingBig(fontWeight: FontWeight.w900),
        textAlign: TextAlign.center,
        cursorColor: Theme.of(context).colorScheme.inversePrimary,
        inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        decoration: InputDecoration(
          hintText: ('0'),
          contentPadding: EdgeInsets.symmetric(vertical: 10),
          hintStyle: TextStyle(color: Theme.of(context).iconTheme.color),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onSaved: (value) {},
      ),
    );
  }
}
