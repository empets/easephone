import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeForms extends StatelessWidget {
  const CustomeForms({
    super.key,
    this.onChanged,
    required this.textLabel,
    this.isCancel,
    required this.errorText,
    required this.msgError,
    this.textInputType,
    this.controller,
    this.maxLines,
    this.minLines,
    this.labelStyle,
    this.readOnly,
    this.prefixIcon,
    this.letSpace,
  });

  final void Function(String)? onChanged;
  final String textLabel;
  final bool? isCancel;
  final String? errorText;
  final String msgError;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final int? maxLines;
  final int? minLines;
  final TextStyle? labelStyle;
  final bool? readOnly;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? letSpace;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 4), // 👉 Ombre uniquement en bas
          ),
        ],
      ),
      child: TextFormField(
        readOnly: readOnly ?? false,
        controller: controller,
        minLines: minLines ?? 1,
        maxLines: maxLines ?? 1,
        inputFormatters:
            letSpace ?? [FilteringTextInputFormatter.deny(RegExp(r'\s'))],
        keyboardType: textInputType,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          label: Text(
            textLabel,
            style:
                labelStyle ??
                GoogleFonts.roboto(
                  color: const Color(0xFF888888),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
          ),
          isDense: true,
          contentPadding: EdgeInsets.all(14.sp),
          filled: true,
          errorText: errorText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withOpacity(.5)),
            borderRadius: BorderRadius.circular(17.r),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: (isCancel != null) ? MyColorName.errorRed : Colors.red,
            ),
            borderRadius: BorderRadius.circular(17.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withOpacity(.5)),
            gapPadding: 2,
            borderRadius: BorderRadius.circular(17.r),
          ),
          border: OutlineInputBorder(
            gapPadding: 2,
            borderRadius: BorderRadius.circular(17.r),
          ),
          errorStyle: GoogleFonts.roboto(
            color: (isCancel != null) ? MyColorName.errorRed : Colors.red,
            fontWeight: FontWeight.bold,
          ),
          hintStyle: GoogleFonts.roboto(
            color: const Color(0xFF888888),
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          fillColor: MyColorName.white,
        ),
        onChanged: onChanged,
      ),
    );
  }
}

class CustomeFormsSigin extends StatelessWidget {
  const CustomeFormsSigin({
    super.key,
    this.onChanged,
    required this.textLabel,
    this.isCancel,
    required this.errorText,
    required this.msgError,
    this.textInputType,
    this.controller,
    this.maxLines,
    this.minLines,
    this.labelStyle,
    this.readOnly,
    this.prefixIcon,
    this.letSpace,
    this.focusNode,
  });

  final void Function(String)? onChanged;
  final String textLabel;
  final bool? isCancel;
  final String? errorText;
  final String msgError;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final int? maxLines;
  final int? minLines;
  final TextStyle? labelStyle;
  final bool? readOnly;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? letSpace;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 4), // 👉 Ombre uniquement en bas
          ),
        ],
      ),
      child: TextFormField(
        focusNode: focusNode,
        style: GoogleFonts.roboto(color: MyColorName.black),
        readOnly: readOnly ?? false,
        controller: controller,
        minLines: minLines ?? 1,
        maxLines: maxLines ?? 1,
        inputFormatters:
            letSpace ?? [FilteringTextInputFormatter.deny(RegExp(r'\s'))],
        keyboardType: textInputType,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          isDense: true,
          contentPadding: EdgeInsets.all(14.sp),
          filled: true,
          errorText: errorText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withOpacity(.5)),
            borderRadius: BorderRadius.circular(17.r),
          ),
          errorBorder: OutlineInputBorder(
            gapPadding: 0.2,
            borderSide: BorderSide(
              width: 0.1.w,
              color: (isCancel != null) ? MyColorName.errorRed : Colors.red,
            ),
            borderRadius: BorderRadius.circular(17.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withOpacity(.5)),
            gapPadding: 2,
            borderRadius: BorderRadius.circular(17.r),
          ),
          border: OutlineInputBorder(
            gapPadding: 2,
            borderRadius: BorderRadius.circular(17.r),
          ),
          errorStyle: GoogleFonts.roboto(
            color: (isCancel != null) ? MyColorName.errorRed : Colors.red,
            fontSize: 11.sp,
            fontWeight: FontWeight.bold,
          ),
          hint: Text(
            textLabel,
            style:
                labelStyle ??
                GoogleFonts.roboto(
                  color: MyColorName.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
          ),
          hintStyle: GoogleFonts.roboto(
            color: MyColorName.black,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.2.sp,
          ),
          fillColor: MyColorName.white.withValues(alpha: 0.7),
        ),
        onChanged: onChanged,
      ),
    );
  }
}

class ProductionFormCustomer extends StatelessWidget {
  const ProductionFormCustomer({
    super.key,
    this.onChanged,
    required this.textLabel,
    this.isCancel,
    required this.errorText,
    required this.msgError,
    this.textInputType,
    this.controller,
    this.maxLines,
    this.minLines,
    this.labelStyle,
    this.readOnly,
    this.prefixIcon,
    this.letSpace,
  });

  final void Function(String)? onChanged;
  final String textLabel;
  final bool? isCancel;
  final String? errorText;
  final String msgError;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final int? maxLines;
  final int? minLines;
  final TextStyle? labelStyle;
  final bool? readOnly;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? letSpace;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      controller: controller,
      minLines: minLines ?? 1,
      maxLines: maxLines ?? 1,
      inputFormatters:
          letSpace ?? [FilteringTextInputFormatter.deny(RegExp(r'\s'))],
      keyboardType: textInputType,
      style: GoogleFonts.roboto(color: MyColorName.textPrimaryDark),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        label: Text(
          textLabel,
          style:
              labelStyle ??
              GoogleFonts.roboto(
                color: const Color(0xFF888888),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
        ),
        isDense: true, // Added this
        contentPadding: EdgeInsets.all(14.sp),
        filled: true,
        //'hintText: textLabel,'
        errorText: errorText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(.5)),
          borderRadius: BorderRadius.circular(7.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: (isCancel != null)
                ? MyColorName.backgroundIvory
                : Colors.red,
          ),
          borderRadius: BorderRadius.circular(7.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(.5)),
          gapPadding: 2,
          borderRadius: BorderRadius.circular(7.r),
        ),
        border: OutlineInputBorder(
          gapPadding: 2,
          borderRadius: BorderRadius.circular(7.r),
        ),
        errorStyle: GoogleFonts.roboto(
          color: (isCancel != null) ? MyColorName.backgroundIvory : Colors.red,
          fontWeight: FontWeight.bold,
        ),
        hintStyle: GoogleFonts.roboto(
          color: const Color(0xFF888888),
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        fillColor: MyColorName.white,
      ),
      onChanged: onChanged,
    );
  }
}

class CustomeFormRadio extends StatelessWidget {
  const CustomeFormRadio({
    super.key,
    required this.textLabel,
    required this.isSelected,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.labelStyle,
  });
  final String textLabel;
  final bool isSelected;
  final String value;
  final String groupValue;
  final void Function(String?)? onChanged;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: value.trim().isNotEmpty ? value.trim() : '',
          activeColor: MyColorName.greenForet,
          //  isSelected ? MyColorName.black :
          toggleable: true,
          groupValue: groupValue,
          onChanged: onChanged,
          overlayColor: WidgetStatePropertyAll(Colors.transparent),
        ),
        Text(
          textLabel,
          style:
              labelStyle ??
              GoogleFonts.roboto(
                color: MyColorName.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}
