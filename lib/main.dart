import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signin_screen/signin_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.raleway().fontFamily
      ),
      home: const SigninScreen(),
    );
  }
}
