import 'package:flutter/material.dart';
import 'package:frute_app/detail_page.dart';
import 'package:frute_app/home_page.dart';
import 'package:frute_app/splash_screen.dart';

void main (){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context) => SplashScreen(),
        "home":(context) => HomePage(),
        "detail":(context) => DetailPage(),

      },
    );
  }
}
