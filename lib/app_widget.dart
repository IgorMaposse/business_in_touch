import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/config/color.dart';
import 'package:flutter_firebase/home_screen.dart';
import 'package:flutter_firebase/screen/home_screen/sign_in.dart';
import 'package:flutter_firebase/screen/login_screen.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, this.title = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
