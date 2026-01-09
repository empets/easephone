import 'dart:developer';

import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:com.example.epbomi/feature/authen/page/create-compte/forms_home_information.dart';
import 'package:com.example.epbomi/feature/authen/page/signin.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/user_profile.dart/event/get_user_profile_bloc.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/user_profile.dart/get_actif_user_profile_information.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/menu/polique_screen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UserMenuContent extends StatelessWidget {
  const UserMenuContent({super.key, this.userProfileItem = ''});

  final String userProfileItem;

  Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Impossible d’ouvrir $url';
    }
  }

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
      child:
          BlocBuilder<
            GetActifUserInformationBloc,
            ApiState<List<ActiveUserProfile>>
          >(
            builder: (context, activeUserState) {
              if (activeUserState is SuccessState<List<ActiveUserProfile>>) {
                final isCreatCompte = activeUserState.data.any(
                  (x) =>
                      x.formOne == 'success' &&
                      x.formTwo == 'success' &&
                      x.formTherd == 'success' &&
                      x.user == userProfileItem,
                );

                log('ooooooooo$userProfileItem');

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 5.h,
                        width: 0.1.sw,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(7.r),
                        ),
                      ),
                    ),

                    BlocBuilder<GetUserProfileBloc, ApiState<ProfileUser>>(
                      builder: (context, state) {
                        if (state is SuccessState<ProfileUser>) {
                          return Container(
                            margin: EdgeInsets.only(top: 20.h),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: EdgeInsets.all(5.r),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: MyColorName.cardBorder,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: CircleAvatar(
                                          radius: 40.r,
                                          backgroundColor:
                                              MyColorName.greyAvatar,
                                          child: Text(
                                            state.data.email.substring(0, 2),
                                            style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0.38.sw,
                                      bottom: 5.w,
                                      child: Icon(
                                        Icons.circle,
                                        size: 10.h,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25.h),
                                Text(
                                  state.data.email,
                                  style: GoogleFonts.roboto(
                                    color: Colors.black87,
                                    fontSize: 14.sp,
                                    letterSpacing: 0.2.sp,
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

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                      padding: EdgeInsets.symmetric(
                        vertical: 4.h,
                        horizontal: 8.w,
                      ),
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
                                    child: Icon(
                                      Icons.history,
                                      color: Colors.black,
                                    ),
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

                              Icon(
                                Icons.arrow_right_sharp,
                                color: Colors.black,
                              ),
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
                                        borderRadius: BorderRadius.circular(
                                          7.r,
                                        ),
                                      ),
                                      child: Icon(Icons.person),
                                    ),

                                    Text(
                                      isCreatCompte
                                          ? 'Modifier'
                                          : 'Create a compte',
                                      style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),

                                Icon(
                                  Icons.arrow_right_sharp,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Preferences',
                        style: GoogleFonts.roboto(
                          color: Colors.black87,
                          fontSize: 14.sp,
                          letterSpacing: 0.2.sp,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                      padding: EdgeInsets.symmetric(
                        vertical: 8.h,
                        horizontal: 8.w,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Column(
                        children: [
                          BlocBuilder<
                            GetUserProfileBloc,
                            ApiState<ProfileUser>
                          >(
                            builder: (context, state) {
                              if (state is SuccessState<ProfileUser>) {
                                return GestureDetector(
                                  onTap: () {
                                    launchURL('mailto:${state.data.email}');
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                              borderRadius:
                                                  BorderRadius.circular(7.r),
                                            ),
                                            child: Icon(
                                              Icons.telegram,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            'Fille Back',
                                            style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                      Icon(
                                        Icons.arrow_right_sharp,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                return SizedBox();
                              }
                            },
                          ),
                          Divider(
                            height: 2.h,
                            color: Colors.black.withValues(alpha: 0.15),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                fadeRoute(ConfidentialityPolitiqueScreen()),
                              );
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
                                        borderRadius: BorderRadius.circular(
                                          7.r,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.paste_rounded,
                                        color: Colors.red.withValues(
                                          alpha: 0.8,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Politique de confidentialité',
                                      style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),

                                Icon(
                                  Icons.arrow_right_sharp,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),

                          Divider(
                            height: 2.h,
                            color: Colors.black.withValues(alpha: 0.15),
                          ),
                          BlocBuilder<
                            GetUserProfileBloc,
                            ApiState<ProfileUser>
                          >(
                            builder: (context, state) {
                              if (state is SuccessState<ProfileUser>) {
                                return GestureDetector(
                                  onTap: () async {
                                    final sharedPreferences =
                                        await SharedPreferences.getInstance();
                                    sharedPreferences.remove('user_section');
                                    showAppSnackBar(
                                      context,
                                      iconRight: Icons.close,
                                      message:
                                          'Déconnexion effectuer avec success',
                                    );
                                    Navigator.of(context).pushAndRemoveUntil(
                                      fadeRoute(const SignIn()),
                                      (route) => false,
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                              color: Colors.red.withValues(
                                                alpha: 0.2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(7.r),
                                            ),
                                            child: Icon(
                                              Icons.exit_to_app_rounded,
                                              color: Colors.red.withValues(
                                                alpha: 0.8,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Déconnexion',
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
                                );
                              } else {
                                return SizedBox();
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
              return SizedBox();
            },
          ),
    );
  }
}
