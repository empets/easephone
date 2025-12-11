

import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/feature/authen/page/create-compte/forms_home_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserMenuContent extends StatelessWidget {
  const UserMenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.7.sh,
      width: MediaQuery.sizeOf(context).width.w,
      padding: EdgeInsetsGeometry.only(
        top: 10.h,
        bottom: 20.h,
        left: 7.w,
        right: 7.w,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 5.h,
              width: 0.1.sw,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(7.r),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 28.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.r), // arrondi
                  child: Image.network(
                    'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                    width: 50.h,
                    height: 50.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 7.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Back road ddkfj',
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Back road ddkfj',
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25.h),
          Text(
            'Inventories',
            style: GoogleFonts.roboto(
              color: Colors.black87,
              fontSize: 14.sp,
              letterSpacing: 0.2.sp,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.h),
            padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
            decoration: BoxDecoration(
              color: Colors.grey.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.h,
                            horizontal: 5.w,
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 8.h,
                            horizontal: 8.w,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7.r),
                          ),
                          child: Icon(Icons.history, color: Colors.black),
                        ),
                        Text(
                          'History',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),

                    Icon(Icons.arrow_right_sharp, color: Colors.black),
                  ],
                ),
                Divider(
                  height: 2.h,
                  color: Colors.black.withValues(alpha: 0.15),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(fadeRoute(const FormsHomeInformation()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5.h,
                              horizontal: 5.w,
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: 8.h,
                              horizontal: 8.w,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7.r),
                            ),
                            child: Icon(Icons.person),
                          ),
                          Text(
                            'Create a compte',
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),

                      Icon(Icons.arrow_right_sharp, color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Preferences',
            style: GoogleFonts.roboto(
              color: Colors.black87,
              fontSize: 14.sp,
              letterSpacing: 0.2.sp,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.h),
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            decoration: BoxDecoration(
              color: Colors.grey.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.h,
                            horizontal: 5.w,
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 8.h,
                            horizontal: 8.w,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7.r),
                          ),
                          child: Icon(Icons.notifications),
                        ),
                        Text(
                          'Voir les notification',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),

                    Icon(Icons.arrow_right_sharp, color: Colors.black),
                  ],
                ),
                Divider(
                  height: 2.h,
                  color: Colors.black.withValues(alpha: 0.15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.h,
                            horizontal: 5.w,
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 8.h,
                            horizontal: 8.w,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7.r),
                          ),
                          child: Icon(Icons.telegram, color: Colors.black),
                        ),
                        Text(
                          'Send email',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),

                    Icon(Icons.arrow_right_sharp, color: Colors.black),
                  ],
                ),

                Divider(
                  height: 2.h,
                  color: Colors.black.withValues(alpha: 0.15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.h,
                            horizontal: 5.w,
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 8.h,
                            horizontal: 8.w,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(7.r),
                          ),
                          child: Icon(
                            Icons.exit_to_app_rounded,
                            color: Colors.red.withValues(alpha: 0.8),
                          ),
                        ),
                        Text(
                          'Logout',
                          style: GoogleFonts.roboto(
                            color: Colors.red,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
