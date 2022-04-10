// ignore_for_file: prefer_const_constructors

import 'package:charging_stations/InputPage.dart';
import 'package:charging_stations/SecondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      // initialRoute: '/',
      // routes: {
      //   '/' :(context) => InputPage(),
      //   '/first': (context) => const secondPage()
      // },
      home: InputPage(),
    );
  }
}