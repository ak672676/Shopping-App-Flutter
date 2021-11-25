import "package:flutter/material.dart";
import 'package:learning_flutter/pages/home_page.dart';
import 'package:learning_flutter/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 20;
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/home":(context) => HomePage(),
        "/login":(context) => LoginPage()
      },
    );
  }
}
