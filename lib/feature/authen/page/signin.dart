import 'dart:developer';

import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/form/form.dart';
import 'package:com.example.epbomi/core/injection/injection_container.dart';
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
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late bool isSignUp = false;

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
          create: (context) =>
              BlocSignin(googleAuthService: GoogleAuthService()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthByMailBloc, AuthByMailState>(
            listener: (context, state) {
              if (state.status.isSuccess) {
                Navigator.of(context).push(fadeRoute(const HomeOverView()));
              }

              if (state.status.isFailure) {
                if (state.errorMessage.contains(
                  "Cet utilisateur existe pas creer un compte",
                )) {
                  showAppSnackBar(
                    context,
                    color: MyColorName.errorRed,
                    iconRight: Icons.close,
                    message: state.errorMessage,
                  );
                  setState(() {
                    isSignUp = true;
                  });
                }

                if (state.errorMessage.contains(
                  "Cet utilisateur existe deja creer un compte",
                )) {
                  showAppSnackBar(
                    context,
                    color: MyColorName.errorRed,
                    iconRight: Icons.close,
                    message: state.errorMessage,
                  );
                  setState(() {
                    isSignUp = false;
                  });
                }
              }
            },
          ),
          BlocListener<BlocSignin, SigninState>(
            listener: (context, state) {
              if (state.status.isSuccess) {
                Navigator.of(context).push(fadeRoute(SignIn()));
              }
            },
          ),
        ],
        child: Scaffold(
          body: BlocBuilder<BlocSignin, SigninState>(
            builder: (context, state) {
              return SafeArea(
                top: false,
                bottom: true,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?fm=jpg&q=60&w=3000',
                        fit: BoxFit.cover,
                      ),
                    ),

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 0.05.sh),
                                  CustomeText(
                                    texte: 'Your Dream Home',
                                    texteSize: 24.sp,
                                    fontWeight: FontWeight.w500,
                                    color: MyColorName.textPrimaryDark,
                                  ),

                                  SizedBox(height: 0.01.sh),
                                  CustomeText(
                                    texte:
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                    texteSize: 12.5.sp,
                                    fontWeight: FontWeight.w600,
                                    color: MyColorName.white,
                                    letterSpacing: 0.3.sp,
                                    textAlign: TextAlign.center,
                                  ),
                                  Expanded(child: SizedBox(height: 5)),

                                  BlocBuilder<AuthByMailBloc, AuthByMailState>(
                                    builder: (context, state) {
                                      return CustomeFormsSigin(
                                        textInputType:
                                            TextInputType.emailAddress,
                                        readOnly: state.status.isInProgress,
                                        prefixIcon: Icon(Icons.email_outlined),
                                        textLabel: 'Email',
                                        errorText:
                                            state.email.isPure ||
                                                state.email.isValid
                                            ? null
                                            : '',
                                        msgError: '',
                                        onChanged: (email) {
                                          context.read<AuthByMailBloc>().add(
                                            AuthByMailEvent.changeEmail(email),
                                          );
                                        },
                                      );
                                    },
                                  ),

                                  SizedBox(height: 9.h),

                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5.h),
                                    child:
                                        BlocBuilder<
                                          AuthByMailBloc,
                                          AuthByMailState
                                        >(
                                          builder: (context, state) {
                                            return CustomeFormsSigin(
                                              readOnly:
                                                  state.status.isInProgress,
                                              prefixIcon: Icon(
                                                Icons.phone_outlined,
                                              ),
                                              textLabel:
                                                  'numéro de compte mail',
                                              errorText:
                                                  state.password.isPure ||
                                                      state.password.isValid
                                                  ? null
                                                  : '',
                                              msgError: '',
                                              onChanged: (password) {
                                                context.read<AuthByMailBloc>().add(
                                                  AuthByMailEvent.changePassword(
                                                    password,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 5.h,
                                      bottom: 20.h,
                                    ),
                                    child: BlocBuilder<AuthByMailBloc, AuthByMailState>(
                                      builder: (context, state) {
                                        return CustomeButton(
                                          isInProgress:
                                              state.status.isInProgress,
                                          onTap: state.status.isInProgress
                                              ? null
                                              : () {
                                                  FocusScope.of(
                                                    context,
                                                  ).unfocus();
                                                  if (!isSignUp) {
                                                    // deja un compte
                                                    log('// deja un compte');
                                                    context
                                                        .read<AuthByMailBloc>()
                                                        .add(
                                                          AuthByMailEvent.submitSignin(),
                                                        );
                                                  } else {
                                                    log(' // creer un compte');
                                                    // creer un compte
                                                    context
                                                        .read<AuthByMailBloc>()
                                                        .add(
                                                          AuthByMailEvent.submitSignup(),
                                                        );
                                                  }
                                                },
                                          btnBackground:
                                              MyColorName.textPrimaryDark,
                                          btnTextColor: MyColorName.white,
                                          btnText: isSignUp
                                              ? 'Se connecter'
                                              : 'Connexion',
                                          btnTextSize: 15.sp,
                                        );
                                      },
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(bottom: 4.h),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 1
                                                .h, // Une ligne plus fine et élégante
                                            color: MyColorName.greyAvatar,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0,
                                          ),
                                          child: CustomeText(
                                            texte:
                                                'Connect with our service', // Petite correction du wording
                                            texteSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: MyColorName.white,
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 1.h,
                                            color: MyColorName.greyAvatar,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 10.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        BlocBuilder<BlocSignin, SigninState>(
                                          builder: (context, state) {
                                            return GestureDetector(
                                              onTap: state.status.isInProgress
                                                  ? null
                                                  : () async {
                                                      FocusScope.of(
                                                        context,
                                                      ).unfocus();
                                                      // context.read<BlocSignin>().add(
                                                      //   SigninEvent.googleAuthen(),
                                                      // );

                                                      showAppSnackBar(
                                                        context,
                                                        iconRight: Icons.close,
                                                        message:
                                                            'Service momentanement indisponible',
                                                      );
                                                    },
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                  horizontal: 20.w,
                                                ),
                                                padding: EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color:
                                                        MyColorName.greyAvatar,
                                                  ),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: FaIcon(
                                                  FontAwesomeIcons.google,
                                                  color: MyColorName
                                                      .backgroundIvory,
                                                ),
                                              ),
                                            );
                                          },
                                        ),

                                        GestureDetector(
                                          onTap: () async {
                                            FocusScope.of(context).unfocus();
                                            showAppSnackBar(
                                              context,
                                              iconRight: Icons.close,
                                              message:
                                                  'Service momentanement indisponible',
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: MyColorName.greyAvatar,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                            child: FaIcon(
                                              FontAwesomeIcons.facebook,
                                              color:
                                                  MyColorName.backgroundIvory,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
