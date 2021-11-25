import 'package:flutter/material.dart';

class TextBottom extends StatefulWidget {
  const TextBottom(
      {Key? key,
      required this.textLeft,
      required this.textRight,
      required this.action})
      : super(key: key);
  final String textLeft;
  final String textRight;
  final Function action;

  @override
  _TextBottomState createState() => _TextBottomState();
}

class _TextBottomState extends State<TextBottom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.textLeft),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            widget.action();
          },
          child: Text(
            widget.textRight,
            style: TextStyle(
              color: Color(0xfffc8668),
            ),
          ),
        ),
      ],
    );
  }
}
