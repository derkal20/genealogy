import 'package:flutter/material.dart';

class TreeManagePage extends StatelessWidget {
  const TreeManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        title: const Text(
          'Phả hệ của tôi',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFE4A11B),
        toolbarHeight: 80.0,
        centerTitle: true,
      ),
      body: Container(
        color: const Color(0xFFF6F6F7), // Màu nền của body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    'Bạn đang là thành viên của 2 phả hệ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10), // Khoảng cách ở hai bên màn hình
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 280,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 2.0, // Thêm margin-top 2px cho hình ảnh
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: ClipRRect(
                                child: Image.asset(
                                  './assets/rectangle_1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          // Padding overlay
                          Positioned(
                            bottom: 8,
                            left: 2,
                            right: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Dòng họ Nguyễn Đông Tác',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 3.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        './assets/user.png',
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                          width:
                                              8), // Khoảng trắng giữa ảnh và văn bản
                                      // Text
                                      const Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '340 thành viên',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      './assets/map.png',
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                        width:
                                            8), // Khoảng trắng giữa ảnh và văn bản
                                    // Text
                                    const Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Bình Sơn, Quảng Ngãi, Việt Nam',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 280,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 2.0, // Thêm margin-top 2px cho hình ảnh
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: ClipRRect(
                                child: Image.asset(
                                  './assets/rectangle_2.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          // Padding overlay
                          Positioned(
                            bottom: 8,
                            left: 2,
                            right: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Tộc Nguyễn Văn',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 3.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        './assets/user.png',
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                          width:
                                              8), // Khoảng trắng giữa ảnh và văn bản
                                      // Text
                                      const Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '340 thành viên',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      './assets/map.png',
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                        width:
                                            8), // Khoảng trắng giữa ảnh và văn bản
                                    // Text
                                    const Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Bình Sơn, Quảng Ngãi, Việt Nam',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
