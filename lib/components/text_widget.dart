import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.color, this.maxLines,
  });
  final String text;
  final double fontSize;
  final fontWeight;
  final color;
  final maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.plusJakartaSans(
            color: color, fontSize: fontSize, fontWeight: fontWeight),
            maxLines: maxLines);
  }
}
