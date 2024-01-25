import 'package:family_tree/constants/image-urls.dart';
import 'package:family_tree/constants/svg-urls.dart';
import 'package:family_tree/provider/focusSearch_provider.dart';
import 'package:family_tree/theme/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../provider/search_provider.dart';
import '../theme/typography_theme.dart';

class AppBarLayout extends StatelessWidget implements PreferredSizeWidget {
  final bool isFocus;

  const AppBarLayout({
    Key? key,
    required this.isFocus,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(isFocus ? 290 : 80);

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    final isFocus = context.watch<FocusSearchProvider>().isFocus;

    return AppBar(
      backgroundColor: isFocus ? ColorsTheme.white : ColorsTheme.yellow,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: Stack(
        children: [
          isFocus
              ? Image.asset(
                  ImgUrls.bgAppBar_1,
                  width: mq.width,
                  fit: BoxFit.cover,
                )
              : SizedBox(),
          isFocus
              ? Positioned(
                  left: 0,
                  top: 0,
                  child: Image.asset(
                    ImgUrls.bgAppBar_2,
                  ),
                )
              : SizedBox(),
          Padding(
            padding: EdgeInsets.only(top: isFocus ? 30 : 40, bottom: isFocus ? 10 : 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isFocus
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Card(
                            elevation: 0,
                            margin: EdgeInsets.zero,
                            color: Colors.transparent,
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(9999),
                                child: Image.asset(
                                  ImgUrls.avatarUser,
                                  fit: BoxFit.cover,
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              title: Text(
                                'Xin Chào',
                                style: TypographyTheme.text1(color: ColorsTheme.white),
                              ),
                              subtitle: Container(
                                constraints: BoxConstraints(
                                  maxWidth: mq.width * 0.45,
                                ),
                                child: Text(
                                  'Võ Thị Thu Thúy!',
                                  style: TypographyTheme.heading3(color: ColorsTheme.white),
                                ),
                              ),
                            ),
                          )),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(9999)),
                                border: Border.all(color: ColorsTheme.brown, width: 1),
                                color: ColorsTheme.white,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.circlePlus,
                                    color: ColorsTheme.yellow,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Tạo mới',
                                    style: TypographyTheme.heading4(color: ColorsTheme.brown),
                                  )
                                ],
                              ),
                            ),
                          ),
                          IconButton(onPressed: () {}, icon: SvgPicture.asset(SvgUrls.iconBell))
                        ],
                      )
                    : SizedBox(),
                Container(
                  color: isFocus ? Colors.transparent : ColorsTheme.yellow,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      isFocus
                          ? SizedBox()
                          : Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(color: ColorsTheme.white, borderRadius: BorderRadius.all(Radius.circular(999))),
                              child: IconButton(
                                  onPressed: () {
                                    Provider.of<FocusSearchProvider>(context, listen: false).handleFocusValue(true);
                                    Provider.of<SearchProvider>(context, listen: false).changeSearchValue('');
                                  },
                                  padding: EdgeInsets.zero,
                                  icon: Icon(
                                    Icons.arrow_back_ios_sharp,
                                    color: ColorsTheme.grey,
                                  )),
                            ),
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          child: TextField(
                            onTap: () {
                              Provider.of<FocusSearchProvider>(context, listen: false).handleFocusValue(false);
                            },
                            onChanged: (value) => {Provider.of<SearchProvider>(context, listen: false).changeSearchValue(value)},
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                              hintText: 'Tìm kiếm theo tên phả hệ',
                              hintStyle: TypographyTheme.text2(color: ColorsTheme.grey),
                              fillColor: ColorsTheme.white,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: ColorsTheme.grey,
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorsTheme.yellow,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: ColorsTheme.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                              filled: true,
                              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(9999)), borderSide: BorderSide.none),
                            ),
                            style: TypographyTheme.text2(),
                          ),
                        ),
                      ),
                      isFocus
                          ? SizedBox()
                          : IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.sliders, color: ColorsTheme.white),
                            ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                isFocus
                    ? ImageSlideshow(
                        width: mq.width,
                        height: 150,
                        initialPage: 0,
                        indicatorColor: ColorsTheme.yellow,
                        indicatorBackgroundColor: ColorsTheme.white,
                        indicatorPadding: 8,
                        autoPlayInterval: 3000,
                        isLoop: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                ImgUrls.imgFamily_1,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                ImgUrls.imgFamily_2,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                ImgUrls.imgFamily_3,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
