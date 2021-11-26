import 'package:buoi4/component/Flash.dart';
import 'package:buoi4/route/path.dart';
import 'package:buoi4/screen/Start.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String path = homePath;
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onChangePage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      Flash(
        Continue: () {
          _onChangePage(1);
        },
        Skip: () {
          _onChangePage(2);
        },
        title: "GPS Tracking",
        text: "Loved the class!...",
        active: _selectedIndex,
        img: "images/img1.png",
      ),
      Flash(
        Continue: () {
          _onChangePage(2);
        },
        Skip: () {
          _onChangePage(2);
        },
        title: "GPS Tracking",
        text: "Loved the class!...",
        active: _selectedIndex,
        img: "images/img2.png",
      ),
      Start(
        active: _selectedIndex,
      ),
    ];
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onItemTapped,
        children: _pages,
      ),
    );
  }
}
