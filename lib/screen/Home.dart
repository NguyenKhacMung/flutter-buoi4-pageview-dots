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

  // List<Widget> _pages = [
  //   Container(
  //     color: Colors.blue,
  //   ),
  //   Container(
  //     color: Colors.amber,
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onItemTapped,
        children: <Widget>[
          Flash(
            Continue: () {
              _pageController.animateToPage(
                1,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
            Skip: () {
              _pageController.animateToPage(
                2,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
            title: "GPS Tracking",
            text: "Loved the class!...",
            active: _selectedIndex,
            img: "images/img1.png",
          ),
          Flash(
            Continue: () {
              _pageController.animateToPage(
                2,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
            Skip: () {
              _pageController.animateToPage(
                2,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
            title: "GPS Tracking",
            text: "Loved the class!...",
            active: _selectedIndex,
            img: "images/img2.png",
          ),
          Start(
            active: _selectedIndex,
          ),
        ],
      ),
    );
  }
}
