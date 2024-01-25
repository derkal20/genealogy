import 'package:flutter/material.dart';

import 'Index-1.dart';

class Index1 extends StatefulWidget {
  const Index1({super.key});

  @override
  State<Index1> createState() => _IndexState();
}

class _IndexState extends State<Index1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: 430,
                height: 98,
                decoration: BoxDecoration(
                  color: Color(0xFFE4A11B),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 34,
                      height: 34,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 34,
                              height: 34,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: OvalBorder(),
                              ),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Index()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.arrow_back_ios),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 20),
                      child: Text(
                        'Thông tin phả hệ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: -0.09,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        show(context);
                      },
                      child: Text(
                        'Chỉnh sửa',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          height: 0.15,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 375,
            height: 145,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(0xFF70855F)),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 73,
                        height: 26,
                        decoration: ShapeDecoration(
                          color: Color(0xFF7DD238),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.chat_bubble_outline),
                            Text(
                              'Chat',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w600,
                                height: 0.15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.network('https://i.imgur.com/nWf4nGq.png'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Tộc Phạm - Phạm Quang',
                        style: TextStyle(
                          color: Color(0xFF464647),
                          fontSize: 14,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                          height: 0.11,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.people,
                            size: 20,
                          ),
                          Text(
                            '20 thành viên',
                            style: TextStyle(
                              color: Color(0xFF0D113B),
                              fontSize: 12,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              height: 0.15,
                            ),
                          ),
                          Text(
                            'ID : 77nh',
                            style: TextStyle(
                              color: Color(0xFF6F707D),
                              fontSize: 12,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              height: 0.15,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.share,
                            size: 20,
                          ),
                          Text(
                            'Chia sẻ',
                            style: TextStyle(
                              color: Color(0xFF0D113B),
                              fontSize: 12,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              height: 0.15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 375,
            height: 154,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Thông tin',
                    style: TextStyle(
                      color: Color(0xFF464647),
                      fontSize: 16,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w700,
                      height: 0.09,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.create,
                        size: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          'Người tạo',
                          style: TextStyle(
                            color: Color(0xFF0D113B),
                            fontSize: 12,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            height: 0.15,
                            letterSpacing: 0.50,
                          ),
                        ),
                      ),
                      Text(
                        'Thái Thị Hoài',
                        style: TextStyle(
                          color: Color(0xFF0D113B),
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          height: 0.15,
                          letterSpacing: 0.50,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.date_range,
                        size: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          'Ngày tạo',
                          style: TextStyle(
                            color: Color(0xFF0D113B),
                            fontSize: 12,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            height: 0.15,
                            letterSpacing: 0.50,
                          ),
                        ),
                      ),
                      Text(
                        '13/12/2022',
                        style: TextStyle(
                          color: Color(0xFF0D113B),
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          height: 0.15,
                          letterSpacing: 0.50,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 20, top: 5),
                        child: Text(
                          'Địa chỉ',
                          style: TextStyle(
                            color: Color(0xFF0D113B),
                            fontSize: 12,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            height: 0.15,
                            letterSpacing: 0.50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Text(
                          'Bình Trị, Bình Sơn, Quảng Ngãi,\nViệt Nam',
                          style: TextStyle(
                            color: Color(0xFF0D113B),
                            fontSize: 12,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 375,
            height: 119,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tiểu sử',
                    style: TextStyle(
                      color: Color(0xFF464647),
                      fontSize: 16,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Dòng họ có từ lâu đời. Hình thành vào năm 1220. \nĐược hình thành tại tỉnh Quảng Trị. Người đúng đầu gia \ntộc là cụ ông Phạm Quang Sáng, đã hưởng thọ 98 tuổi.\n',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFF0D113B),
                      fontSize: 12,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.50,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 430,
            height: 35,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      Text(
                        'Cây phả hệ',
                        style: TextStyle(
                          color: Color(0xFFDF9400),
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          height: 0.15,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 112,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.50,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFE4A11B),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Xét duyệt',
                            style: TextStyle(
                              color: Color(0xFF0D113B),
                              fontSize: 12,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              height: 0.15,
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFF0000),
                              shape: OvalBorder(),
                            ),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w600,
                                  height: 0.23,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                           child:  Container(
                              width: 114.17,
                              height: 80.26,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                              ),
                             child: Column(
                               children: [
                                 Row(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Icon(
                                       Icons.favorite_border,
                                       size: 18,
                                     ),
                                     Icon(
                                       Icons.person,
                                       size: 18,
                                     ),
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                 Text(
                                   'Hoàng Mai Đức\nHạnh',
                                   textAlign: TextAlign.center,
                                   style: TextStyle(
                                     color: Color(0xFF0D113B),
                                     fontSize: 10,
                                     fontFamily: 'Manrope',
                                     fontWeight: FontWeight.w600,
                                     letterSpacing: -0.20,
                                   ),
                                 ),
                                 SizedBox(height: 10,),
                                 Text(
                                   '22/07/2001',
                                   style: TextStyle(
                                     color: Color(0xFF464647),
                                     fontSize: 10,
                                     fontFamily: 'Manrope',
                                     fontWeight: FontWeight.w500,
                                     height: 0.15,
                                   ),
                                 )
                               ],
                             ),
                            ),

                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 67.83,
                        height: 67.83,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD9D9D9),
                          shape: OvalBorder(
                            side: BorderSide(width: 2, color: Colors.white),
                          ),
                        ),
                        child: Image.network('https://i.imgur.com/nWf4nGq.png'),
                      ),
                    ]),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Stack(
                  children: [Container(
                    width: 62,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFA4A2A2),
                        ),
                      ),
                    ),
                  ),
                    Container(
                      margin: EdgeInsets.only(left: 25,),
                      width: 14,
                      height: 14,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                      child: Icon(Icons.link, size: 13,),

                    ),
                  ]
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child:  Container(
                          width: 114.17,
                          height: 80.26,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.person,
                                    size: 18,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text(
                                'Hoàng Mai Đức\nHạnh',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF0D113B),
                                  fontSize: 10,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.20,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                '22/07/2001',
                                style: TextStyle(
                                  color: Color(0xFF464647),
                                  fontSize: 10,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w500,
                                  height: 0.15,
                                ),
                              )
                            ],
                          ),
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 67.83,
                        height: 67.83,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD9D9D9),
                          shape: OvalBorder(
                            side: BorderSide(width: 2, color: Colors.white),
                          ),
                        ),
                        child: Image.network('https://i.imgur.com/nWf4nGq.png'),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Stack(
                    children: [Container(
                      height: 40,
                      width: 1,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFA4A2A2),
                          ),
                        ),
                      ),
                    )
                    ]
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child:  Container(
                          width: 114.17,
                          height: 80.26,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.person,
                                    size: 18,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text(
                                'Hoàng Mai Đức\nHạnh',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF0D113B),
                                  fontSize: 10,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.20,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                '22/07/2001',
                                style: TextStyle(
                                  color: Color(0xFF464647),
                                  fontSize: 10,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w500,
                                  height: 0.15,
                                ),
                              )
                            ],
                          ),
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 67.83,
                        height: 67.83,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD9D9D9),
                          shape: OvalBorder(
                            side: BorderSide(width: 2, color: Colors.white),
                          ),
                        ),
                        child: Image.network('https://i.imgur.com/nWf4nGq.png'),
                      ),
                    ]),
                  ),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
  void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: <Widget>[
            Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 0,top: 20,bottom: 20),
                        child: Image.network('https://i.imgur.com/4sitdhh.png'),
                      ),
                      Text('XÁC NHẬN DANH TÍNH',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 25,bottom: 20),
                        child: Text('Nhập số điện thoại của bạn để quá trình xác nhận danh tính diễn ra nhanh nhất',
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.greenAccent),
                        ),
                      ),
        TextField(
        decoration: InputDecoration(
        hintText: 'Nhập nội dung',
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0), // Độ cong của đường biên
        borderSide: BorderSide(color: Colors.blue), // Đường biên màu xanh
        ),
        focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0), // Độ cong của đường biên khi focus
        borderSide: BorderSide(color: Colors.blue), // Đường biên màu xanh khi focus
        ),
        ),
        ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70,top: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextButton(onPressed: (){}
                                  , style: TextButton.styleFrom(
                                    padding: EdgeInsets.all(16),
                                    primary: Colors.white,
                                    backgroundColor: Colors.blue, // Màu nền của nút
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0), // Độ cong của đường biên
                                      side: BorderSide(color: Colors.blue), // Đường biên màu xanh
                                    ),
                                  ), child: Text('Trở lại')),
                            ),
                            TextButton(onPressed: (){}
                                , style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(16.0),
                                  primary: Colors.white,
                                  backgroundColor: Colors.blue, // Màu nền của nút
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0), // Độ cong của đường biên
                                    side: BorderSide(color: Colors.blue), // Đường biên màu xanh
                                  ),
                                ), child: Text('Đồng ý')),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Đóng dialog khi nhấn nút
                  },
                  child: Text('Đóng'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

}
