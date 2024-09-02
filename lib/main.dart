import 'package:flutter/material.dart';
import 'package:navbar/Pages/movielist.dart';
import 'package:navbar/Pages/homepage.dart';
import 'package:navbar/Pages/itempage.dart';


void main() {
  runApp(
    MaterialApp(
      initialRoute: "/home",
      routes: {
        '/home': (context) => HomePage(),
        '/item': (context) => ItemPage(),
        '/movie': (context) => Movielist(),
      },
      title: 'Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    ),
  );
}