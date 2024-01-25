import 'package:family_tree/constants/image-urls.dart';
import 'package:family_tree/model/clan_model.dart';
import 'package:family_tree/screens/profile_screen.dart';
import 'package:family_tree/screens/splSt1_screen.dart';
import 'package:family_tree/theme/typography_theme.dart';
import 'package:family_tree/widgets/blog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import '../apis/clan_api.dart';
import '../provider/focusSearch_provider.dart';
import '../provider/search_provider.dart';
import '../theme/colors_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int result;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration.zero, () {
      updateSearchResult();
    });
  }

  void updateSearchResult() {
    final valueSearch = context.watch<SearchProvider>().searchController;
    result = listClan
        .where((item) {
          return item.userName.toLowerCase().contains(valueSearch!.text.toLowerCase()) ?? false;
        })
        .toList()
        .length;
  }

  @override
  Widget build(BuildContext context) {
    final valueSearch = context.watch<SearchProvider>().searchController;
    final isFocus = Provider.of<FocusSearchProvider>(context).isFocus;
    updateSearchResult();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            isFocus
                ? Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(bottom: 10),
                    color: ColorsTheme.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              ImgUrls.iconMenu,
                              width: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Danh mục',
                              style: TypographyTheme.heading3(fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: ColorsTheme.yellow, width: 1),
                                        shape: BoxShape.circle,
                                        color: const Color(0xffFDE7BB)),
                                    child: Image.asset(
                                      ImgUrls.iconTreeFamily,
                                      width: 35,
                                      fit: BoxFit.cover,
                                    )),
                                Text(
                                  'Tạo cây phả hệ',
                                  style: TypographyTheme.text1(),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: ColorsTheme.yellow, width: 1),
                                        shape: BoxShape.circle,
                                        color: const Color(0xffFDE7BB)),
                                    child: Image.asset(
                                      ImgUrls.iconFamily,
                                      width: 35,
                                      fit: BoxFit.cover,
                                    )),
                                Text(
                                  'Cây phả hệ của tôi',
                                  style: TypographyTheme.text1(),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        isFocus
                            ? 'Khám phá Gia tộc'
                            : result == 0
                                ? 'Không có kết quả nào'
                                : '${result.toString()} kết quả được tìm thấy',
                        style: TypographyTheme.heading3(fontWeight: FontWeight.w700),
                      ),
                      isFocus
                          ? InkWell(
                              onTap: () {},
                              child: Text(
                                'Xem thêm >',
                                style: TypographyTheme.text1(color: const Color(0xffCC5237)),
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  result != 0
                      ? StaggeredGrid.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: listClan
                              .where((item) {
                                return item.userName.toLowerCase().contains(valueSearch!.text.toLowerCase()) ?? false;
                              })
                              .map((e) => StaggeredGridTile.count(
                                    crossAxisCellCount: 1,
                                    mainAxisCellCount: 1.3,
                                    child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) => ProfileScreen(
                                                        user: e,
                                                      )));
                                        },
                                        child: BlogWidget(img: e.image, name: e.userName, member: e.member, address: e.address)),
                                  ))
                              .toList(),
                        )
                      : Center(
                          heightFactor: 2,
                          child: Image.asset(ImgUrls.bgSearch),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
