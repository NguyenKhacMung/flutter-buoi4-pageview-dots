import 'package:buoi4/component/TextBottom.dart';
import 'package:buoi4/component/TextInput.dart';
import 'package:buoi4/component/btn.dart';
import 'package:buoi4/route/path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  static String path = singUp;
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SING UP",
                    style: TextStyle(
                      color: Color(0xFF404040),
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Complete this step for best adjustment"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Your Email"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Input(
                      obscureText: false,
                      hintText: 'hellobesnik@gmail.com',
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Password"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Input(
                      obscureText: !toggle,
                      hintText: '***********',
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Mobile"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Input(
                      obscureText: false,
                      hintText: '+880-1777-138-513',
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 5,
                          child: CupertinoSwitch(
                            activeColor: Color(0xfffe734c),
                            value: toggle,
                            onChanged: (bool value) {
                              setState(() {
                                toggle = value;
                              });
                              print(toggle);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("I accepted all tearms & conditions"),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    btn(
                        color: Color(0xfffe734c),
                        Action: () {
                          Navigator.pop(context);
                        },
                        text: "Sing up"),
                  ],
                ),
              ),
            ),
            TextBottom(
              textLeft: "I don't have account ?",
              textRight: "Sing In",
              action: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
