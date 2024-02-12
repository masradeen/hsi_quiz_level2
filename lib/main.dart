import 'package:flutter/material.dart';
import './pages/beranda_pages.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BerandaPage(),
      initialRoute: BerandaPage.nameRoute,
      routes: {
        BerandaPage.nameRoute:(context) => BerandaPage(),
        // ProfilePage.nameRoute:(context) => ProfilePage(),
      },
    );
  }
}