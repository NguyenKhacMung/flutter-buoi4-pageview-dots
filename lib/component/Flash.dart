import 'package:buoi4/component/btn.dart';
import 'package:buoi4/component/navList.dart';
import 'package:flutter/material.dart';

class Flash extends StatefulWidget {
  const Flash(
      {Key? key,
      required this.Continue,
      required this.Skip,
      required this.title,
      required this.text,
      required this.active,
      required this.img})
      : super(key: key);

  final Function Continue;
  final Function Skip;
  final String title;
  final String text;
  final int active;
  final String img;

  @override
  _FlashState createState() => _FlashState();
}

class _FlashState extends State<Flash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              widget.Skip();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Skip",
                  style: TextStyle(
                    color: Color(0xfffe734c),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Color(0xfffe734c),
                ),
              ],
            ),
          ),
          Image.asset(
            widget.img,
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
          Text(
            widget.title,
            style: TextStyle(
              color: Color(0xFF404040),
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(widget.text),
          NavList(
            active: widget.active,
            pages: 3,
          ),
          btn(
            color: Color(0xfffe734c),
            Action: widget.Continue,
            text: "continue",
          ),
        ],
      ),
    );
  }
}
