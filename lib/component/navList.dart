import 'package:flutter/material.dart';

class NavList extends StatefulWidget {
  const NavList({Key? key, required this.active, required this.pages})
      : super(key: key);
  final int active;
  final int pages;
  @override
  _NavListState createState() => _NavListState();
}

class _NavListState extends State<NavList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 10,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.pages,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
              width: widget.active == index ? 40 : 20,
              height: double.infinity,
              decoration: BoxDecoration(
                color: widget.active == index
                    ? Color(0xfffe734c)
                    : Colors.amber[100],
                borderRadius: BorderRadius.circular(15),
              ),
            );
          }),
    );
  }
}
