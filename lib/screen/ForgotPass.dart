import 'package:buoi4/component/TextBottom.dart';
import 'package:buoi4/component/TextInput.dart';
import 'package:buoi4/component/btn.dart';
import 'package:buoi4/route/path.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  static String path = forgotPass;
  const ForgotPass({Key? key}) : super(key: key);

  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "FORGOT PASSWORD",
                    style: TextStyle(
                      color: Color(0xFF404040),
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Enter your email or phone to request a password reset"),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Form(
                child: Column(
                  children: [
                    Input(
                      obscureText: false,
                      hintText: 'hellobesnik@gmail.com',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    btn(
                      color: Color(0xfffe734c),
                      Action: () {
                        Navigator.pushNamed(context, singIn);
                      },
                      text: "send now",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            TextBottom(
              textLeft: "Having Problem?",
              textRight: "Need Help",
              action: () {
                Navigator.pushNamed(context, homePath);
              },
            ),
          ],
        ),
      ),
    );
  }
}
