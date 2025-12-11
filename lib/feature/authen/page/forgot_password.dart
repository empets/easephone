
import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/form/form.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        top: true,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 7.h,
                      horizontal: 10.w,
                    ),
                    decoration: BoxDecoration(
                      color: MyColorName.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.arrow_back, color: MyColorName.black),
                  ),
                ),
                SizedBox(height: 0.03.sh),

                CustomeText(
                  texte: 'Create Account',
                  texteSize: 25.sp,
                  letterSpacing: 0.3.sp,
                  color: MyColorName.black,
                  fontWeight: FontWeight.w700,
                ),

                SizedBox(height: 15.h),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomeText(
                    texte:
                        'Enter you email address to receive a reset link and regain access to your account',
                    texteSize: 14.sp,
                    letterSpacing: 0.3.sp,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                  ),
                ),

                                SizedBox(height: 0.05.sh),


                Container(
                  margin: EdgeInsets.only(bottom: 10.h),
                  child: CustomeForms(
                    textLabel: 'Email address',
                    errorText: null,
                    msgError: '',
                    prefixIcon: Icon(Icons.person, color: Colors.grey.shade500),
                  ),
                ),
                SizedBox(height: 0.02.sh,),

                CustomeButton(
                  btnBackground: MyColorName.greenForet,
                  btnTextColor: MyColorName.white,
                  btnText: 'Continue',
                  btnTextSize: 14.sp,
                  btnRadius: 17.r,
                  elevation: 3,
                ),


              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
