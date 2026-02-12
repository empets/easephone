import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/authentification_signup_bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/sign_up.dart';
import 'package:com.example.epbomi/feature/authen/page/signin.dart';
import 'package:flutter/material.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/global_params/global_params.dart';
import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/data/service/remote/google_authen/service_firebase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/signup_usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/signin_usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/authentification_signin_bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/state/authentification_state.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/bloc_signin.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/state/signin_state.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_screen.dart';
import 'package:com.example.epbomi/gen/assets.gen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class AuthentificationScreen extends StatefulWidget {
  const AuthentificationScreen({super.key});

  @override
  State<AuthentificationScreen> createState() => _AuthentificationScreenState();
}

class _AuthentificationScreenState extends State<AuthentificationScreen> {
  late bool isSignUp = false;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthentificationAuthentificationSignInBloc(
            authenSignIn: getIt<AuthentificationSignInUsercase>(),
            googleAuthService: getIt<GoogleAuthService>(),
          ),
        ),
        BlocProvider(
          create: (context) => GoogleAuthenBloc(
            googleAuthService: GoogleAuthService(),
            //signinUsercase: getIt<AuthentificationSignInUsercase>(),
          ),
        ),
        // AuthentificationAuthentificationSignInBloc
        BlocProvider(
          create: (context) => AuthentificationSignUpBloc(
            googleAuthService: GoogleAuthService(),
            authenSignUp: getIt<AuthentificationSignUpUsercase>(),
          ),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          //-->>  Sign-in
          BlocListener<
            AuthentificationAuthentificationSignInBloc,
            AuthentificationState
          >(
            listener: (context, state) {
              if (state.status.isSuccess) {
                Navigator.of(context).pushAndRemoveUntil(
                  fadeRoute(const HomeOverView()),
                  (route) => false,
                );
              }

              if (state.status.isFailure) {
                showAppSnackBar(
                  context,
                  color: MyColorName.errorRed,
                  iconRight: Icons.close,
                  message: state.errorMessage,
                );
              }
            },
          ),

          //-->>  Google Auth
          BlocListener<GoogleAuthenBloc, SigninState>(
            listener: (context, state) {
              if (state.status.isSuccess) {
                Navigator.of(context).pushAndRemoveUntil(
                  fadeRoute(const HomeOverView()),
                  (route) => false,
                );
              }
            },
          ),
          //-->>  Sign-up
          BlocListener<AuthentificationSignUpBloc, AuthentificationState>(
            listener: (context, state) {
              if (state.status.isSuccess) {
                Navigator.of(context).pushAndRemoveUntil(
                  fadeRoute(const HomeOverView()),
                  (route) => false,
                );
              }
            },
          ),
        ],
        child: Scaffold(
          backgroundColor: MyColorName.backgroundIvory,
          body: BlocBuilder<GoogleAuthenBloc, SigninState>(
            builder: (context, state) {
              return SafeArea(
                top: true,
                bottom: true,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    children: [
                      SizedBox(height: 0.04.sh),
                      KeyboardVisibilityBuilder(
                        builder: (context, keyBordKey) {
                          return keyBordKey
                              ? SizedBox()
                              : Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SvgPicture.asset(
                                        MyAssets.icons.authen.path,
                                        height: 0.2.sh,
                                      ),
                                    ),
                                    SizedBox(height: 25.h),
                                    CustomeText(
                                      texte: 'Casa new place is here',
                                      color: MyColorName.black,
                                      fontWeight: FontWeight.w400,
                                      texteSize: 20.sp,
                                    ),
                                    SizedBox(height: 15.h),
                                  ],
                                );
                        },
                      ),

                      KeyboardVisibilityBuilder(
                        builder: (context, isKey) => !isKey
                            ? CustomeText(
                                texte: GlobalParams.poliqueOfConfidentialite
                                    .substring(0, 100),
                                color: MyColorName.black,
                                fontWeight: FontWeight.w400,
                                texteSize: 13.sp,
                                letterSpacing: 0.2.sp,
                                textAlign: TextAlign.center,
                              )
                            : SizedBox(),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15.h),
                        padding: EdgeInsets.symmetric(
                          vertical: 6.h,
                          horizontal: 8.w,
                        ),
                        decoration: BoxDecoration(
                          color: MyColorName.greyBorder.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: !isSignUp
                                      ? [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(
                                              0.25,
                                            ),
                                            blurRadius: 15,
                                            spreadRadius: 2,
                                            offset: const Offset(
                                              0,
                                              8,
                                            ), // ⬇️ ombre vers le bas
                                          ),
                                        ]
                                      : null,
                                ),
                                child: CustomeButton(
                                  btnBackground: !isSignUp
                                      ? MyColorName.black
                                      : MyColorName.backgroundIvory,
                                  btnTextColor: !isSignUp
                                      ? MyColorName.white
                                      : MyColorName.black,
                                  btnText: "Sign in",
                                  btnTextSize: 12.4.sp,
                                  onTap: () {
                                    setState(() {
                                      isSignUp = false;
                                    });
                                    // globalKey.currentState?.reset();
                                  },
                                  elevation: 13.h,
                                ),
                              ),
                            ),
                            SizedBox(width: 20.w),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: isSignUp
                                      ? [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(
                                              0.25,
                                            ),
                                            blurRadius: 15,
                                            spreadRadius: 2,
                                            offset: const Offset(
                                              0,
                                              8,
                                            ), // ⬇️ ombre vers le bas
                                          ),
                                        ]
                                      : null,
                                ),
                                child: CustomeButton(
                                  btnBackground: isSignUp
                                      ? MyColorName.black
                                      : MyColorName.backgroundIvory,
                                  btnTextColor: isSignUp
                                      ? MyColorName.white
                                      : MyColorName.black,
                                  btnText: "Sign Up",
                                  btnTextSize: 12.4.sp,
                                  onTap: () {
                                    setState(() {
                                      isSignUp = true;
                                    });
                                    // globalKey.currentState?.reset();
                                  },
                                  elevation: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      isSignUp ? SignUpScrenn() : SignIn(),

                      SizedBox(height: 7.h),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
