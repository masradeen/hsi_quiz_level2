import 'dart:collection';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BerandaPage extends StatefulWidget {
  static const nameRoute = './berandapage';

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  final List mySliderItems = [
    Image.asset("assets/images/slide-1.png"),
    Image.asset("assets/images/slide-2.png"),
    Image.asset("assets/images/slide-3.png"),
    Image.asset("assets/images/slide-4.png"),
    Image.asset("assets/images/slide-5.png"),
  ];

  int myCurrentIndex = 0;
  int selectedIndex = 0;

  int _selectedNavIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final _listPage = <Widget>[
      const Text("Beranda"),
      const Text("Akademi"),
      const Text("Reguler"),
      const Text("Profil"),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Beranda",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.school),
        label: "Akademi",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.edit_document),
        label: "Reguler",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Profil",
      ),
    ];

    final _bottomNavBar = BottomNavigationBar(
      // backgroundColor: Colors.white70,
      type: BottomNavigationBarType.fixed,
      // backgroundColor: Colors.amber,
      items: _bottomNavBarItems,
      currentIndex: _selectedNavIndex,
      unselectedItemColor: Colors.grey.shade600,
      selectedItemColor: Color(0xFF043164),
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF043164),
        leading: Stack(
          children: [
            Positioned(
              left: 12,
              height: 45,
              width: 45,
              child: Image.asset("assets/logos/hsi.png"),
            ),
          ],
        ),
        title: Container(
          margin: EdgeInsets.only(bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "EDU HSI",
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "v.2401-2001",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("Assalamu'alaykum,"),
                Text(
                  "SIGIT NUGROHO PUTRA",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text("ARN241-40181"),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider(
                  items: mySliderItems.map((i) {
                    return Builder(
                      builder: (BuildContext) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: i,
                          ),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: false,
                    scrollDirection: Axis.horizontal,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayInterval: const Duration(seconds: 2),
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        myCurrentIndex = index;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                AnimatedSmoothIndicator(
                  activeIndex: myCurrentIndex,
                  count: mySliderItems.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 5,
                    dotColor: Colors.grey,
                    activeDotColor: Color(0xFF043164),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: 13),
            child: Text(
              "Info Pendaftaran",
              style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.all(13),
            height: MediaQuery.of(context).size.width * 0.58,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey.shade300,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(13),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 0.13,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      border: Border.all(
                        width: 0,
                        color: Colors.blue.shade100,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Align(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          // alignment: Alignment.center,
                          // height: 10,
                          // width: 10,
                          child: Icon(
                            Icons.info,
                            size: 18,
                          ),
                        ),
                      ),
                      Text(
                        "Pendaftaran Program Hifzhul Mutun\nAngkatan Ke-03",
                        style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          letterSpacing: .1,
                          color: Color(0xFF043164),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 13),
                  child: Text(
                    "Bismillah\nPendaftaran Hifzhul Mutun HSI AbdullahRoy\nAngkatan Ke-3 telah dibuka",
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(13),
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Selengkapnya",
                      style: TextStyle(
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 15, 66, 232),
                      padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey.shade300,
          ),
        ),
        child: _bottomNavBar,
      ),
    );
  }
}
