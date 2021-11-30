import 'package:buoi4/component/TextBottom.dart';
import 'package:buoi4/component/TextInput.dart';
import 'package:buoi4/component/btn.dart';
import 'package:buoi4/route/path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  static String path = singIn;
  const SingIn({Key? key}) : super(key: key);

  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  late bool toggle = false;
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
                    "SING IN",
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
                      height: 20,
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
                        Text("Remember Me"),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, forgotPass);
                              },
                              child: Text("Forgot password?"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    btn(
                        color: Color(0xfffe734c),
                        Action: () {},
                        text: "Sing in")
                  ],
                ),
              ),
            ),
            btn(
              color: Color(0xfff4167b0),
              Action: () {},
              text: "sing in with facebook",
            ),
            TextBottom(
              textLeft: "I don't have account ?",
              textRight: "Sing Up",
              action: () {
                Navigator.pushNamed(context, singUp);
              },
            ),
          ],
        ),
      ),
    );
  }
}
