import 'package:flutter/material.dart';

class BerandaPage extends StatelessWidget {
  static const nameRoute = './berandapage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF043164),
      //   leading: Container(
      //     color: Colors.amber,
      //     padding: EdgeInsets.all(8),
      //     child: Image.asset(
      //       "assets/logos/hsi.png",
      //     ),
      //   ),
      //   title: Container(
      //     margin: EdgeInsets.only(
      //       left: 0
      //     ),
          
      //     color: Colors.amber,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Text(
      //           "EDU HSI",
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white,
      //           ),
      //         ),
      //         Text(
      //           "v.2401-2001",
      //           style: TextStyle(
      //             fontSize: 13,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
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
    );
  }
}