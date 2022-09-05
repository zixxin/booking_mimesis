import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: Container(
              color: const Color(0xFF12347B),
              height: 50.0,
            )),
        backgroundColor: const Color(0xFF12347B),
        title: Image.asset('image/booking_logo.png', width: 130),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 15, bottom: 5),
            iconSize: 30,
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 27),
            label: '검색',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, size: 27),
            label: '위시리스트',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center_outlined, size: 27),
            label: '내 예약',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, size: 27),
            label: '프로필',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: const Color(0xFF2F6FBC),
        unselectedItemColor: const Color(0xFF6B6B6B),
        showUnselectedLabels: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Text(
                    '여행이 거듭될수록 커지는 혜택',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Text(
                    '다양한 혜택 및 소식',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
