import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarrotPage(),
    );
  }
}

class CarrotPage extends StatelessWidget {
  const CarrotPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            _buildListView(),
            SizedBox(height: 20),
            _buildMain(),
            SizedBox(height: 20),
            _buildMain2(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomAppBar(),
    );
  }

  BottomAppBar _buildBottomAppBar() {
    return BottomAppBar(
      elevation: 50.0,
      child: Container(
        height: 100, // 원하는 높이로 설정하세요.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.favorite,
              size: 30,
            ),
            Text(
              "10,000원",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              alignment: Alignment.center,
              width: 150,
              height: 45,
              child: Text(
                "대화 중인 채팅방 1",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildMain2() {
    return Row(
      children: [
        Text(
          "작년에 산 새 제품입니다!!!",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Column _buildMain() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "아이더 패딩 팔아요",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "의류",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Icon(Icons.home, color: Colors.white),
      actions: [
        Icon(Icons.share, color: Colors.white),
        Icon(Icons.menu, color: Colors.white),
      ],
    );
  }

  Widget _buildListView() {
    return Column(
      children: [
        Image.asset("assets/jacket.jpg"),
        SizedBox(width: 40),
        Row(
          children: [
            Icon(
              Icons.favorite,
              size: 40,
              color: Colors.red,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "까닝",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "경상남도 김해시",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Spacer(),
            Text(
              "40.1",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.green),
            ),
            Icon(
              Icons.emoji_emotions,
              size: 40,
              color: Colors.blue,
            ),
          ],
        ),
      ],
    );
  }
}
