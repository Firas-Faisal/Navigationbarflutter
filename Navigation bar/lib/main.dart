import 'dart:ffi';

import 'package:firstthing/pages/first_page.dart';
import 'package:firstthing/pages/home_page.dart';
import 'package:firstthing/pages/profile_page.dart';
import 'package:firstthing/pages/settings_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

String bapak = "firas";

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
        routes: {
          '/firstpage': (context) => FirstPage(),
          '/homepage': (context) => HomePage(),
          '/settingspage': (context) => SettingsPage(),
          '/profilepage': (context) => ProfilePage(),
        });
  }
}
