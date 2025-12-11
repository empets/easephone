import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeText extends StatelessWidget {
  CustomeText({
    super.key,
    required this.texte,
    this.color,
    this.texteSize,
    this.fontWeight,
    this.letterSpacing,
    this.textAlign,
  });

  final String texte;
  final Color? color;
  final double? texteSize;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      texte ,
      style: GoogleFonts.roboto(
        color: color ?? Colors.black,
        fontSize: texteSize ?? 12,
        fontWeight: fontWeight ?? null,
        letterSpacing: letterSpacing ?? null,
      ),
      textAlign: textAlign,
    );
  }
}
