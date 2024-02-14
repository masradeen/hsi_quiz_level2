import 'package:flutter/material.dart';
import 'pages/beranda_page.dart';
import 'pages/profil_page.dart';
import 'pages/akademi_page.dart';
import 'pages/reguler_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final screens = [
    BerandaPage(),
    AkademiPage(),
    RegulerPage(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      //-------- OLD ROUTING -----------//
      // home: BerandaPage(),
      // initialRoute: BerandaPage.nameRoute,
      // routes: {
      //   BerandaPage.nameRoute:(context) => BerandaPage(),
      //   ProfilPage.nameRoute:(context) => ProfilPage(),
      // },
      //-------- OLD ROUTING -----------//

      home: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey.shade300,
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white70,
            currentIndex: currentIndex,
            unselectedItemColor: Colors.grey.shade600,
            selectedItemColor: Color(0xFF043164),
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Beranda",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: "Akademi",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.edit_document),
                label: "Reguler",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profil",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
