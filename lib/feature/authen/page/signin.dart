import 'dart:developer';
import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/form/form.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/authentification_signin_bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/event/authentification_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/state/authentification_state.dart';
import 'package:com.example.epbomi/feature/authen/page/forgot_password.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Column(
        children: [
          BlocBuilder<
            AuthentificationAuthentificationSignInBloc,
            AuthentificationState
          >(
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
                  context
                      .read<AuthentificationAuthentificationSignInBloc>()
                      .add(AuthentificationEvent.changeEmail(email));
                },
              );
            },
          ),

          SizedBox(height: 4.h),

          Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            child:
                BlocBuilder<
                  AuthentificationAuthentificationSignInBloc,
                  AuthentificationState
                >(
                  builder: (context, state) {
                    return CustomeFormsSigin(
                      readOnly: state.status.isInProgress,
                      textInputType: TextInputType.number,
                      prefixIcon: Icon(Icons.phone_outlined),
                      textLabel: 'Numéro de téléphone',
                      errorText: state.password.isPure || state.password.isValid
                          ? null
                          : '',
                      msgError: '',
                      onChanged: (password) {
                        context
                            .read<AuthentificationAuthentificationSignInBloc>()
                            .add(
                              AuthentificationEvent.changePassword(password),
                            );
                      },
                    );
                  },
                ),
          ),

          Container(
            margin: EdgeInsets.only(top: 17.h, bottom: 20.h),

            child:
                BlocBuilder<
                  AuthentificationAuthentificationSignInBloc,
                  AuthentificationState
                >(
                  builder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                        boxShadow:
                            state.status.isInProgress || state.status.isInitial
                            ? null
                            : [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
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

                                log('// deja un compte');
                                context
                                    .read<
                                      AuthentificationAuthentificationSignInBloc
                                    >()
                                    .add(AuthentificationEvent.submitSignin());
                              },
                        btnBackground: state.status.isInProgress
                            ? Colors.black12
                            : MyColorName.black,
                        btnTextColor: state.status.isInProgress
                            ? MyColorName.black
                            : MyColorName.white,
                        btnText: "Connexion",
                        btnTextSize: 13.sp,
                        elevation: 19.h,
                      ),
                    );
                  },
                ),
          ),

          TextButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(fadeRoute(const ForgotPasswordScreen()));
            },
            child: Text(
              "Mot de passe oublié",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: MyColorName.textPrimaryDark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
