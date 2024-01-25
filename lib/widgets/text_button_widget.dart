import 'package:family_tree/theme/typography_theme.dart';
import 'package:flutter/material.dart';

import '../theme/colors_theme.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final Function()? onPressed;

  const TextButtonWidget({super.key, required this.text, this.color = ColorsTheme.yellow, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(color),
                padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 18)),
                shape: const MaterialStatePropertyAll(
                    RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(15)))),
              ),
              child: Text(text, style: TypographyTheme.heading3(fontWeight: FontWeight.w700, color: ColorsTheme.white))),
        ),
      ],
    );
  }
}
