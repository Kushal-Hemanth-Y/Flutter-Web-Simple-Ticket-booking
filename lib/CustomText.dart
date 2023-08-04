import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontweight;
  final Color textcolor;
  const customText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontweight,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
          fontWeight: fontweight, fontSize: fontSize, color: textcolor),
    );
  }
}
