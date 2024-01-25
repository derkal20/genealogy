import 'package:flutter/material.dart';

class TreeInfoPage extends StatelessWidget {
  const TreeInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE4A11B),
        title: Text(
          'Thông tin phả hệ',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            color: Colors.grey,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.black),
            onPressed: () {
              // Xử lý khi nút chỉnh sửa được nhấn
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: Card(
              shape: RoundedRectangleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              './assets/Group 758532905.png',
                              // width: 200.0, // Đặt chiều rộng theo ý muốn
                              // height: 200.0, // Đặt chiều cao theo ý muốn
                            ),
                            SizedBox(width: 10.0),
                          ],
                        ),
                        CircleAvatar(
                          radius: 60.0,
                          backgroundImage: AssetImage('./assets/Ellipse 3.png'),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              './assets/Group 758532772.png',
                              // width: 25.0, // Đặt chiều rộng theo ý muốn
                              // height: 25.0, // Đặt chiều cao theo ý muốn
                            ),
                            SizedBox(width: 10.0),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tộc Phạm - Phạm Quang',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight:
                                FontWeight.w700, // Trọng lượng font là 700
                            fontFamily: 'Manrope',
                            height: 20.92 / 18.0, // Line height
                            color: Color(0xFF464647), // Màu sắc
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          './assets/Rectangle 23969.png',
                          width: 25.0, // Đặt chiều rộng theo ý muốn
                          height: 25.0, // Đặt chiều cao theo ý muốn
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '20 thành viên',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito',
                          ),
                        ),
                        SizedBox(width: 25.0),
                        Text('ID : 77nh'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            height: 250,
            width: 800,
            child: Card(
              shape: RoundedRectangleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Thông tin",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Nunito',
                              height: 21.78 / 12.0,
                              color: Color(0xFF464647)),
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              './assets/blur.png',
                              width: 25.0, // Đặt chiều rộng theo ý muốn
                              height: 25.0, // Đặt chiều cao theo ý muốn
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              "Người tạo",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Nunito',
                                  height: 21.78 / 12.0,
                                  color: Color(0xFF0D123C)),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              "Thái Thị Hoài",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Nunito',
                                  height: 21.78 / 12.0,
                                  color: Color(0xFF0D123C)),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              './assets/bi_calendar2-date.png',
                              width: 25.0, // Đặt chiều rộng theo ý muốn
                              height: 25.0, // Đặt chiều cao theo ý muốn
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              "Ngày tạo",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Nunito',
                                  height: 21.78 / 12.0,
                                  color: Color(0xFF0D123C)),
                            ),
                            SizedBox(width: 17.0),
                            Text(
                              "13/12/2022",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Nunito',
                                  height: 21.78 / 12.0,
                                  color: Color(0xFF0D123C)),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              './assets/Vector.png',
                              width: 25.0, // Đặt chiều rộng theo ý muốn
                              height: 25.0, // Đặt chiều cao theo ý muốn
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              "Địa chỉ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Nunito',
                                  height: 21.78 / 12.0,
                                  color: Color(0xFF0D123C)),
                            ),
                            SizedBox(width: 29.0),
                            SizedBox(
                              width: 200,
                              child: Text(
                                "Quy Thiện, Hải Quy, Hải Lăng, Quảng Trị, Việt Nam",
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Nunito',
                                    height: 21.78 / 12.0,
                                    color: Color(0xFF0D123C)),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: Card(
              shape: RoundedRectangleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Tiểu sử",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Nunito',
                              height: 21.78 / 12.0,
                              color: Color(0xFF464647)),
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.84,
                          child: Text(
                            "Dòng họ có từ lâu đời. Hình thành vào năm 1220. Được hình thành tại tỉnh Quảng Trị. Người đúng đầu gia tộc là cụ ông Phạm Quang Sáng, đã hưởng thọ 98 tuổi.",
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            height: 100,
            width: 800,
            child: Card(
              shape: RoundedRectangleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Đưa ảnh vào giữa theo chiều ngang
                  crossAxisAlignment: CrossAxisAlignment
                      .center, // Đưa ảnh vào giữa theo chiều dọc
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 1.0),
                        Text(
                          "Cây phả hệ",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Nunito',
                              height: 21.78 / 12.0,
                              color: Color(0xFFDF9500)),
                        ),
                        Text(
                          "Xét duyệt",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Nunito',
                              height: 21.78 / 12.0,
                              color: Color(0xFF0D123C)),
                        ),
                        SizedBox(height: 1.0),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    // Các phần khác của Card
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 60.0),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            height: 100,
            width: 800,
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Đưa ảnh vào giữa theo chiều ngang
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Đưa ảnh vào giữa theo chiều dọc
              children: [
                Image.asset(
                  './assets/Group 758532780.png',
                  // width: 25.0, // Đặt chiều rộng theo ý muốn
                  // height: 25.0, // Đặt chiều cao theo ý muốn
                ),
                SizedBox(width: 10.0),
                // Các phần khác của Row
              ],
            ),
          )
        ],
      ),
    );
  }
}
