import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input(
      {Key? key,
      required this.obscureText,
      required this.hintText,
      required this.textAlign})
      : super(key: key);
  final bool obscureText;
  final String hintText;
  final TextAlign textAlign;
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: widget.textAlign,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xfff8f8f8),
        hoverColor: Colors.white,
        contentPadding: EdgeInsets.all(22),
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Color(0xFFe3eaef),
          ),
        ),
        border: const OutlineInputBorder(),
        hintText: widget.hintText,
      ),
    );
  }
}
