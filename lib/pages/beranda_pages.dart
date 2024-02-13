import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
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
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
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
                SizedBox(height: 15,),
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
        ],
      ),
    );
  }
}
