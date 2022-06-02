import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_firebase/app_widget.dart';
import 'package:flutter_firebase/config/color.dart';
import 'package:flutter_firebase/home_screen.dart';
import 'package:flutter_firebase/screen/home_screen/sign_in.dart';
import 'package:flutter_firebase/screen/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => SigIn(),
      },
    );
  }
}
