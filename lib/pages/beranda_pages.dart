import 'package:flutter/material.dart';

class BerandaPage extends StatelessWidget {
  static const nameRoute = './berandapage';

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
                SizedBox(height: 10,),
                Text("Assalamu'alaykum,"),
                Text(
                  "SIGIT NUGROHO PUTRA",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5,),
                Text("ARN241-40181"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}