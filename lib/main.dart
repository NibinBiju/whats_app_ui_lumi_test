import 'package:flutter/material.dart';
import 'package:whats_app_ui_lumi_test/views/tabbar_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 3, child: TabbarPage()),
    );
  }
}
