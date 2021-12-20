import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: const Color(0xFFEBF2F8),
      ),
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: TextField(
        decoration: const InputDecoration(border: InputBorder.none),
        style: GoogleFonts.lato(),
      ),
    );
  }
}
