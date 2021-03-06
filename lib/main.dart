import "package:flutter/material.dart";
import 'package:learning_flutter/pages/home_page.dart';
import 'package:learning_flutter/pages/login_page.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:learning_flutter/utils/routes.dart';
import 'package:learning_flutter/widgets/themes.dart';

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
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.LoginRoute: (context) => LoginPage()
      },
    );
  }
}
