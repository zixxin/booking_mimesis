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
                            padding: const EdgeInsets.only(
                                left: 15, top: 7, bottom: 7, right: 7),
                            constraints: const BoxConstraints(),
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
                            padding: const EdgeInsets.only(left: 15, right: 7),
                            constraints: const BoxConstraints(),
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
                            padding: const EdgeInsets.only(left: 15, right: 7),
                            constraints: const BoxConstraints(),
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
                            padding: const EdgeInsets.only(left: 15, right: 7),
                            constraints: const BoxConstraints(),
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
        title: Image.asset('image/booking_logo.png', width: 120),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 20, bottom: 5),
            iconSize: 27,
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
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 360,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(
                        color: const Color(0xFFF4BE41),
                        width: 4,
                      ),
                    ),
                    margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, bottom: 10, right: 17),
                              constraints: const BoxConstraints(),
                              iconSize: 25,
                              icon: const Icon(Icons.search),
                              onPressed: () {},
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: const Text(
                                '목적지 입력',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1.0,
                          height: 1.0,
                        ),
                        Row(
                          children: [
                            IconButton(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, bottom: 10, right: 17),
                              constraints: const BoxConstraints(),
                              iconSize: 25,
                              icon: const Icon(Icons.calendar_today_outlined),
                              onPressed: () {},
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: const Text(
                                '9월 5일(월) ~ 9월 6일(화)',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1.0,
                          height: 1.0,
                        ),
                        Row(
                          children: [
                            IconButton(
                              padding: const EdgeInsets.only(
                                  left: 8, top: 10, bottom: 10, right: 15),
                              constraints: const BoxConstraints(),
                              iconSize: 28,
                              icon: const Icon(Icons.person_outline),
                              onPressed: () {},
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: const Text(
                                '객실 1개 - 성인 2명, 동반 아동 없음',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 45,
                              width: 352,
                              decoration: const BoxDecoration(
                                color: Color(0xFF2F6FBC),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(9),
                                    bottomRight: Radius.circular(9)),
                              ),
                              child: const Text(
                                '검색',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                width: 360,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: const Color.fromARGB(255, 205, 205, 205),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          color: const Color(0xFF874317),
                          padding: const EdgeInsets.only(
                              left: 13, top: 10, bottom: 10, right: 8),
                          constraints: const BoxConstraints(),
                          iconSize: 25,
                          icon: const Icon(Icons.info_outline),
                          onPressed: () {},
                        ),
                        const Text(
                          '코로나19(COVID-19) 관련 최신 여행 지침',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                      ],
                    ),
                    IconButton(
                      padding: const EdgeInsets.only(
                          left: 13, top: 10, bottom: 10, right: 13),
                      constraints: const BoxConstraints(),
                      iconSize: 15,
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 15),
                    child: Text(
                      '여행이 거듭될수록 커지는 혜택',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 130,
                    child: ListView(
                      padding: const EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 220,
                              margin: const EdgeInsets.only(
                                  top: 15, left: 15, right: 15),
                              padding: const EdgeInsets.only(
                                  top: 18, bottom: 15, left: 20, right: 15),
                              decoration: const BoxDecoration(
                                color: Color(0xFF1D4AB1),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'image/genius.png',
                                    width: 80,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    child: const Text(
                                      '윤지인 님은 Genius 로열티\n프로그램의 레벨 1 회원입니다',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 220,
                              margin: const EdgeInsets.only(top: 15, right: 15),
                              padding: const EdgeInsets.only(
                                  top: 18, bottom: 15, left: 20, right: 15),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                  color: const Color(0xFF1D4AB1),
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    child: const Text(
                                      '10% 할인',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    child: const Text(
                                      '전 세계 Genius 숙소에서\n할인 혜택을 누려보세요',
                                      style: TextStyle(fontSize: 13),
                                    ),
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
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 15),
            child: Text(
              '다양한 혜택 및 소식',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 170,
                height: 200,
                margin: const EdgeInsets.only(
                    left: 15, top: 15, right: 17, bottom: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 8),
                    ),
                  ],
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(3),
                        topRight: Radius.circular(3),
                      ),
                      child: Image.asset(
                        'image/discount.png',
                        width: 170,
                        height: 130,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 11, left: 12),
                      child: const Text(
                        '최소 15% 할인 혜택',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5, left: 12),
                      child: const Text(
                        '꿈에 그리던 여행을 휴가\n특가와 함께 계획하세요',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 170,
                height: 200,
                margin: const EdgeInsets.only(top: 15, right: 15, bottom: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 8),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(3.0),
                      child: Image.asset('image/tour_info.png',
                          width: 170, height: 200, fit: BoxFit.fill),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 170, left: 13),
                      child: const Text(
                        '여행 / 관광 정보',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
