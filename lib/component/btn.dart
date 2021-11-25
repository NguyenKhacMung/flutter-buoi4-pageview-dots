import 'package:flutter/material.dart';

class btn extends StatefulWidget {
  const btn(
      {Key? key, required this.color, required this.Action, required this.text})
      : super(key: key);
  final Color color;
  final Function Action;
  final String text;
  @override
  _btnState createState() => _btnState();
}

class _btnState extends State<btn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: () {
          widget.Action();
        },
        child: Text(
          widget.text.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
