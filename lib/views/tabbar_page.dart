import 'package:flutter/material.dart';
import 'package:whats_app_ui_lumi_test/views/callapage.dart';
import 'package:whats_app_ui_lumi_test/views/homepage.dart';
import 'package:whats_app_ui_lumi_test/views/statuspage.dart';

class TabbarPage extends StatefulWidget {
  TabbarPage({super.key});

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  int count = 0;

  final List ofPages = [
    const Homepage(),
    const Statuspage(),
    const Callpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Whats app',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.green,
        bottom: TabBar(
            indicatorColor: const Color.fromARGB(255, 114, 114, 114),
            indicatorSize: TabBarIndicatorSize.tab,
            onTap: (index) {
              count = index;
              setState(() {});
            },
            labelStyle: const TextStyle(
              color: Colors.white,
            ),
            tabs: const [
              Text('Home'),
              Text('Status'),
              Text('Calls'),
            ]),
      ),
      body: ofPages[count],
    );
  }
}
