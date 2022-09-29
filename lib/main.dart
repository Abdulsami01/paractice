import 'package:bootcamp/pages/home.dart';
import 'package:bootcamp/pages/login.dart';
import 'package:bootcamp/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      //home: HomePage(),
      routes: {
        "/": (context) => Login(),
        MyRotues.homeRoute: (context) => HomePage(),
        MyRotues.loginRoute: (context) => Login(),
      },
    );
  }
}
