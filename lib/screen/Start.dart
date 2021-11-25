import 'package:buoi4/component/TextBottom.dart';
import 'package:buoi4/component/btn.dart';
import 'package:buoi4/component/navList.dart';
import 'package:buoi4/route/path.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({
    Key? key,
    required this.active,
  }) : super(key: key);
  final int active;

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "images/img3.png",
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
          Text(
            "GPS Tracking",
            style: TextStyle(
              color: Color(0xFF404040),
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text("Loved the class!..."),
          NavList(
            active: widget.active,
            pages: 3,
          ),
          btn(
            color: Color(0xfff4167b0),
            Action: () {
              const snackBar = SnackBar(content: Text('Tap'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            text: "sing in with facebook",
          ),
          btn(
            color: Color(0xfffe734c),
            Action: () {
              Navigator.pushNamed(context, singIn);
            },
            text: "sing in",
          ),
          TextBottom(
            textLeft: "Or Start to",
            textRight: "Search Now",
            action: () {},
          ),
        ],
      ),
    );
  }
}
