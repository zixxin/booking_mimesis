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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF264888),
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      margin: const EdgeInsets.only(left: 15, bottom: 10),
                      child: Row(
                        children: [
                          IconButton(
                            iconSize: 20,
                            icon: const Icon(Icons.bed_outlined,
                                color: Colors.white),
                            onPressed: () {},
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: const Text(
                              '숙소',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          IconButton(
                            iconSize: 20,
                            icon: const Icon(Icons.directions_car,
                                color: Colors.white),
                            onPressed: () {},
                          ),
                          const Text(
                            '렌터카',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          IconButton(
                            iconSize: 20,
                            icon: const Icon(Icons.local_taxi_outlined,
                                color: Colors.white),
                            onPressed: () {},
                          ),
                          const Text(
                            '택시',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          IconButton(
                            iconSize: 20,
                            icon: const Icon(Icons.attractions_outlined,
                                color: Colors.white),
                            onPressed: () {},
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 18),
                            child: const Text(
                              '명소/투어',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))),
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
