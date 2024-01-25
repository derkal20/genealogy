import 'package:family_tree/theme/colors_theme.dart';
import 'package:family_tree/theme/typography_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputWidget extends StatefulWidget {
  final bool isIcon;
  final bool isPassword;
  final TextEditingController textEditingController;
  final String? hintText;
  final String? icon;

  const InputWidget({super.key, required this.isIcon, this.isPassword = false, required this.textEditingController, this.hintText, this.icon});

  @override
  State<InputWidget> createState() => _InputWidgetState(isPassword);
}

class _InputWidgetState extends State<InputWidget> {
  bool isHide;
  FocusNode _focusNode = FocusNode();
  Color _color = Colors.grey;
  TextStyle _style = TypographyTheme.text1();

  _InputWidgetState(this.isHide);

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      setState(() {
        _color = _focusNode.hasFocus ? ColorsTheme.yellow : ColorsTheme.black;
        _style = _focusNode.hasFocus ? TypographyTheme.heading3(color: _color) : TypographyTheme.text1();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(width: 1, color: ColorsTheme.greyLight),
        color: ColorsTheme.white,
      ),
      child: Row(
        children: [
          if (widget.isIcon)
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                border: BorderDirectional(end: BorderSide(width: 1, color: ColorsTheme.greyLight)),
              ),
              child: SvgPicture.asset(
                widget.icon!,
                width: 18,
                color: _color,
              ),
            ),
          Expanded(
            child: Stack(
              children: [
                TextField(
                  controller: widget.textEditingController,
                  style: _style,
                  focusNode: _focusNode,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    hintText: widget.hintText,
                    hintStyle: TypographyTheme.text1(color: ColorsTheme.grey),
                  ),
                  obscureText: isHide,
                ),
                if (widget.isPassword)
                  Positioned(
                    top: 14,
                    right: 10,
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            isHide = !isHide;
                          });
                        },
                        child: FaIcon(
                          isHide ? FontAwesomeIcons.solidEye : FontAwesomeIcons.solidEyeSlash,
                          color: ColorsTheme.grey,
                          size: 20,
                        )),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
