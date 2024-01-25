import 'package:flutter/material.dart';
import 'package:giaphane/screens/chat.dart';
import 'package:giaphane/screens/generation_page.dart';
import 'package:giaphane/screens/pha-he.dart';

class CreateInfo extends StatefulWidget {
  const CreateInfo({super.key});
  @override
  State<CreateInfo> createState() => _CreateInfoState();
}

class _CreateInfoState extends State<CreateInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            120,
          ),
          child: Container(
            height: 90,
            color: Colors.orangeAccent,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PhaHe(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_back)),
                  Text("Thông tin phả hệ"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Generation(),
                        ),
                      );
                    },
                    child: Text("Chỉnh sửa"),
                  )
                ]),
          )),
      backgroundColor: const Color(0xFFF5FDFB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.greenAccent,
                margin: EdgeInsets.only(left: 20),
                width: 90,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.green),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChatScreen(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.chat,
                          color: Colors.white,
                        )),
                    Text(
                      "Chat",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Image.asset(
                      'assets/images/giapha.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text("Tộc Phạm - Phạm Quang"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text("20 thành viên"),
                      ),
                      Container(
                        child: Text(
                          "ID: 77nh",
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Row(children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.share_sharp)),
                  Text("Chia sẻ")
                ]),
              )
            ],
          ),
          Column(
            children: [
              Text("Thông tin"),
              Row(
                children: [
                  Row(children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.people)),
                    Text("Người tạo")
                  ]),
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Thái Thị Hoài"))
                ],
              ),
              Row(
                children: [
                  Row(children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.people)),
                    Text("Ngày tạo")
                  ]),
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("13/12/2022"))
                ],
              ),
              Row(
                children: [
                  Row(children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.people)),
                    Text("Địa chỉ")
                  ]),
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Bình Lâm, Hiệp Đức, Quảng Nam"))
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text("Tiểu sử"),
              SizedBox(
                height: 10,
              ),
              Column(children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "Dòng họ có từ lâu đời. Hình thành vào năm 1220. Được hình thành tại tỉnh Quảng Trị. Người đúng đầu gia tộc là cụ ông Phạm Quang Sáng, đã hưởng thọ 98 tuổi.",
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),
                )
              ]),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 50, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cây phả hệ",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                Text("Xét duyệt",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500))
              ],
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            margin: EdgeInsets.only(left: 160),
            child: Column(
              children: [
                Container(
                  child: IconButton(
                      color: Colors.black,
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(32),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return Container(
                              height: 500,
                              width: double.infinity,
                              child: Wrap(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 30, left: 10, right: 10),
                                            width: 60,
                                            height: 60,
                                            child: Image.asset(
                                                "assets/images/giapha.jpg"),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 30),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text("Võ Thị Thu Thúy"),
                                                Text("22/-7/2001"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 50, left: 10, right: 10),
                                        width: 90,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                            color: Colors.greenAccent),
                                        child: Text(
                                          "Bổ nhiệm",
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 160,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.people)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.people)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.people)),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.people)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.people)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.people)),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.people)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.people)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.people)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.people,
                        size: 60,
                      )),
                ),
                Container(
                    width: 120,
                    height: 90,
                    color: Colors.grey,
                    child: Text(
                      "Cập nhật",
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          )
          // SizedBox(
          //   // width và height đc set để phù hợp với mọi màn hình
          //   width: double.infinity,
          //   height: MediaQuery.of(context).size.height,
          //   child: Center(
          //     child: SizedBox(
          //       height: 310,
          //       // khi nào dùng listview.builder -> khi mà muốn đổ api (bởi vì dữ liệu nhiều nên ta phải dùng list view để có thanh kéo và  listview builder nó  giống vs hàm map trong js)
          //       child: ListView.builder(
          //         // axis.horizontal là trục ngang nên dữ liệu đc đổ từ trái qua phải
          //         // axis.vertical là trục thẳng nên dữ liệu đc đổ từ trên xuống dưới

          //         scrollDirection: Axis.horizontal,
          //         // item count là lấy cái số lượng api mình hiện có
          //         itemCount: samplePlants.length,
          //         // hàm này làm gì -> là nó sẽ chạy lặp qua tất cả api mình mà mình có nó mặc định có 2 giá trị
          //         itemBuilder: (BuildContext context, int index) {
          //           return _buildPageItem(
          //               samplePlants[index], index, samplePlants);
          //         },
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _buildPageItem() {
    return InkWell(

        // child: Container(
        //   width: 177,
        //   height: 250,
        //   margin: EdgeInsets.only(left: 0, right: 6, top: 30, bottom: 30),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(12),
        //     boxShadow: const [
        //       BoxShadow(
        //         color: Color(0x1F0C9359),
        //         blurRadius: 20,
        //         offset: Offset(0, 8),
        //         spreadRadius: 0,
        //       )
        //     ],
        //   ),
        //   child: Column(
        //     children: [
        //       Container(
        //         height: 177,
        //         decoration: BoxDecoration(
        //           borderRadius: const BorderRadius.only(
        //             topLeft: Radius.circular(12),
        //             topRight: Radius.circular(12),
        //           ),
        //           image: DecorationImage(
        //               fit: BoxFit.cover,
        //               image: AssetImage("images/hinh-anh-hoc-bai-nam-anime.jpg")
        //               // image: AssetImage(plant.imageUrl),
        //               ),
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 16,
        //       ),
        //       Text(
        //         "abc",
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
