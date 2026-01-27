import 'dart:developer';

import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/form/form.dart';
import 'package:com.example.epbomi/core/global_params/global_params.dart';
import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/navigator_widget/custome_app_bar.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/data/service/remote/google_authen/service_firebase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/authen_by_mail_usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/signin_usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/auth-by-mail/auth_by_mail_bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/auth-by-mail/event/auth_by_mail_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/auth-by-mail/state/auth_by_mail_state.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/bloc_signin.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/state/signin_state.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_screen.dart';
import 'package:com.example.epbomi/gen/assets.gen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late bool isSignUp = false;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthByMailBloc(
            signinUsercase: getIt<SigninUsercase>(),
            authenByMailUsercase: getIt<AuthenByMailUsercase>(),
          ),
        ),
        BlocProvider(
          create: (context) => BlocSignin(
            googleAuthService: GoogleAuthService(),
            signinUsercase: getIt<SigninUsercase>(),
          ),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthByMailBloc, AuthByMailState>(
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
          BlocListener<BlocSignin, SigninState>(
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
          appBar: CustomAppBar(),
          body: BlocBuilder<BlocSignin, SigninState>(
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

                      CustomeText(
                        texte: GlobalParams.poliqueOfConfidentialite.substring(
                          0,
                          100,
                        ),
                        color: MyColorName.black,
                        fontWeight: FontWeight.w400,
                        texteSize: 13.sp,
                        letterSpacing: 0.2.sp,
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 7.h),
                      Form(
                        key: globalKey,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 17.h, bottom: 20.h),

                              child: BlocBuilder<AuthByMailBloc, AuthByMailState>(
                                builder: (context, state) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      boxShadow:
                                          state.status.isInProgress ||
                                              state.status.isInitial
                                          ? null
                                          : [
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
                                            ],
                                    ),
                                    child: CustomeButton(
                                      isInProgress: state.status.isInProgress,
                                      onTap: state.status.isInProgress
                                          ? null
                                          : () {
                                              FocusScope.of(context).unfocus();
                                              if (!isSignUp) {
                                                // deja un compte
                                                log('// deja un compte');
                                                context.read<AuthByMailBloc>().add(
                                                  AuthByMailEvent.submitSignin(),
                                                );
                                              } else {
                                                log(' // creer un compte');
                                                // creer un compte
                                                context.read<AuthByMailBloc>().add(
                                                  AuthByMailEvent.submitSignup(),
                                                );
                                              }
                                            },
                                      btnBackground: state.status.isInProgress
                                          ? Colors.black12
                                          : MyColorName.black,
                                      btnTextColor: state.status.isInProgress
                                          ? MyColorName.black
                                          : MyColorName.white,
                                      btnText: !isSignUp
                                          ? "Sign in"
                                          : "Sign Up",
                                      btnTextSize: 13.sp,
                                      elevation: 19.h,
                                    ),
                                  );
                                },
                              ),
                            ),

                            isSignUp
                                ? CustomeText(
                                    texte:
                                        'By create ancount, you agree to our privacy policy',
                                    color: MyColorName.black,
                                    fontWeight: FontWeight.w400,
                                    texteSize: 12.sp,
                                    textAlign: TextAlign.center,
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
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
