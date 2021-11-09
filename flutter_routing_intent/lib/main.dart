import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_intent/screen1.dart';
import 'package:flutter_routing_intent/screen2.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      // routes: {
      //   'screen_1': (ctx) {
      //     return HomeScreen();
      //   },
      //   'screen_2': (ctx) {
      //     return SecondOne();
      //   }
      // },
    );
  }
}
