// ignore_for_file: must_be_immutable

import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeButton extends StatelessWidget {
  CustomeButton({
    super.key,
    required this.btnBackground,
    this.btnRadius = 7,
    required this.btnTextColor,
    required this.btnText,
    required this.btnTextSize,
    this.onTap,
    this.btnBorder,
    this.btnFontWeight,
    this.elevation,
    this.margin,
    this.isInProgress = false,
  });

  void Function()? onTap;
  final Color btnBackground;
  final bool isInProgress;
  double btnRadius;
  BoxBorder? btnBorder;
  double? elevation;
  final Color btnTextColor;
  final String btnText;
  final double btnTextSize;
  final FontWeight? btnFontWeight;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.10),
              blurRadius: 8,
              spreadRadius: 1,
              offset: const Offset(0, 4), // 👉 Ombre uniquement en bas
            ),
          ],
        ),
        child: Container(
          height: 36.h,
          margin: margin,
          decoration: BoxDecoration(
            color: btnBackground,
            border: btnBorder,
            borderRadius: BorderRadius.circular(btnRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isInProgress)
                SizedBox(
                  height: 15.h,
                  width: 15.h,
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor: MyColorName.greyMedium,
                    valueColor: AlwaysStoppedAnimation(MyColorName.white),
                  ),
                )
              else
                Text(
                  btnText,
                  style: GoogleFonts.roboto(
                    color: btnTextColor,
                    fontSize: btnTextSize.sp,
                    fontWeight: btnFontWeight ?? FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
