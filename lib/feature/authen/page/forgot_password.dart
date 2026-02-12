import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/form/form.dart';
import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/navigator_widget/custome_app_bar.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/data/service/remote/google_authen/service_firebase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/recuperation_authentidication_usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/compte_recuperation_bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/event/authentification_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/state/authentification_state.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_screen.dart';
import 'package:com.example.epbomi/gen/assets.gen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late bool isSignUp = false;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CompteRecuperationBloc(
            recuperationAuthentidication:
                getIt<RecuperationAuthentidicationUsercase>(),
          ),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<CompteRecuperationBloc, AuthentificationState>(
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
        ],
        child: Scaffold(
          backgroundColor: MyColorName.backgroundIvory,
          appBar: CustomAppBar(),
          body: SafeArea(
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
                    texte:
                        "Nous vous avons envoyer un lien de validation dans votre adresse mail veuillez lique la dessur",
                    color: MyColorName.black,
                    fontWeight: FontWeight.w400,
                    texteSize: 13.sp,
                    letterSpacing: 0.2.sp,
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 0.05.sh),
                  Form(
                    key: globalKey,
                    child: Column(
                      children: [
                        BlocBuilder<
                          CompteRecuperationBloc,
                          AuthentificationState
                        >(
                          builder: (context, state) {
                            return CustomeFormsSigin(
                              textInputType: TextInputType.phone,
                              readOnly: state.status.isInProgress,
                              prefixIcon: Icon(Icons.phone_locked_outlined),
                              textLabel: "Entrer autre numéro d'urgence",
                              errorText:
                                  state.remenber.isPure ||
                                      state.remenber.isValid
                                  ? null
                                  : '',
                              msgError: '',
                              onChanged: (remenber) {
                                context.read<CompteRecuperationBloc>().add(
                                  AuthentificationEvent.changeRemenber(
                                    remenber,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 17.h, bottom: 20.h),

                          child:
                              BlocBuilder<
                                CompteRecuperationBloc,
                                AuthentificationState
                              >(
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
                                              // GoogleAuthService.sendCode(
                                              //   '+2250788884118',
                                              // );
                                              context
                                                  .read<
                                                    CompteRecuperationBloc
                                                  >()
                                                  .add(
                                                    AuthentificationEvent.resetAuthentification(),
                                                  );
                                            },
                                      btnBackground: state.status.isInProgress
                                          ? Colors.black12
                                          : MyColorName.black,
                                      btnTextColor: state.status.isInProgress
                                          ? MyColorName.black
                                          : MyColorName.white,
                                      btnText: "Recupération de compte",
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
          ),
        ),
      ),
    );
  }
}
