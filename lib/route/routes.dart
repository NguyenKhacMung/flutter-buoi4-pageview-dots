import 'package:buoi4/screen/ForgotPass.dart';
import 'package:buoi4/screen/Home.dart';
import 'package:buoi4/screen/SingIn.dart';
import 'package:buoi4/screen/SingUp.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  Home.path: (context) => const Home(),
  SingIn.path: (context) => const SingIn(),
  SingUp.path: (context) => const SingUp(),
  ForgotPass.path: (context) => const ForgotPass(),
};
