import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:com.example.epbomi/feature/authen/page/create-compte/forms_home_information.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/user_profile.dart/event/get_user_profile_bloc.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

          BlocBuilder<GetUserProfileBloc, ApiState<ProfileUser>>(
            builder: (context, state) {
              if (state is SuccessState<ProfileUser>) {
                return Container(
                  margin: EdgeInsets.only(top: 28.h),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 27.r,
                        backgroundColor: MyColorName.greyAvatar,
                        child: Text(
                          state.data.email.substring(0, 2),
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return SizedBox();
              }
            },
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
                    Navigator.of(
                      context,
                    ).push(fadeRoute(const FormsHomeInformation()));
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
