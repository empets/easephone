import 'dart:developer';

import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/form/form.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/auth-by-mail/auth_by_mail_bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/auth-by-mail/event/auth_by_mail_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/auth-by-mail/state/auth_by_mail_state.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/bloc_signin.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/state/signin_state.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key, required this.isSignUp});

  final bool isSignUp;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocSignin, SigninState>(
      builder: (context, state) {
        return Expanded(
          child: Container(
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
                          textInputType: TextInputType.emailAddress,
                          readOnly: state.status.isInProgress,
                          prefixIcon: Icon(Icons.email_outlined),
                          textLabel: 'Email',
                          errorText: state.email.isPure || state.email.isValid
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
                      child: BlocBuilder<AuthByMailBloc, AuthByMailState>(
                        builder: (context, state) {
                          return CustomeFormsSigin(
                            readOnly: state.status.isInProgress,
                            prefixIcon: Icon(Icons.lock_outlined),
                            textLabel: 'password',
                            errorText:
                                state.password.isPure || state.password.isValid
                                ? null
                                : '',
                            msgError: '',
                            onChanged: (password) {
                              context.read<AuthByMailBloc>().add(
                                AuthByMailEvent.changePassword(password),
                              );
                            },
                          );
                        },
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 5.h, bottom: 20.h),
                      child: BlocBuilder<AuthByMailBloc, AuthByMailState>(
                        builder: (context, state) {
                          return CustomeButton(
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
                            btnBackground: MyColorName.textPrimaryDark,
                            btnTextColor: MyColorName.white,
                            btnText: isSignUp
                                ? 'Creer un compte'
                                : 'Connectez vous',
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
                              height: 1.h, // Une ligne plus fine et élégante
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
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BlocBuilder<BlocSignin, SigninState>(
                            builder: (context, state) {
                              return GestureDetector(
                                onTap: state.status.isInProgress
                                    ? null
                                    : () async {
                                        FocusScope.of(context).unfocus();
                                        context.read<BlocSignin>().add(
                                          SigninEvent.googleAuthen(),
                                        );
                                      },
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 20.w,
                                  ),
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: MyColorName.greyAvatar,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: FaIcon(
                                    FontAwesomeIcons.google,
                                    color: MyColorName.backgroundIvory,
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
                                message: 'Service momentanement indisponible',
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
                                color: MyColorName.backgroundIvory,
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
        );
      },
    );
  }
}
