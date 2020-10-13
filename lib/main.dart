import 'package:GDGdemo/pages/home_page.dart';

import './pages/slider_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      home: SliderPage(
        key: Key("startingpage"),
      ),
      routes: {
        "/home": (_) => HomePage(
              key: Key("home"),
            ),
      },
    );
  }
}
