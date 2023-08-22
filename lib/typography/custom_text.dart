import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:advanced_basics/typography/font_config.dart';
import 'package:advanced_basics/theme/colors.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.preset, this.text, this.textAlign, {super.key});

  final String preset;
  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: typographyColors[preset],
        fontSize: fontSizes[preset],
        fontWeight: FontWeight.bold,
      ),
      textAlign: textAlign,
    );
  }
}
