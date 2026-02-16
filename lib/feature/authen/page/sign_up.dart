import 'dart:developer';

import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/form/form.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/authentification_signup_bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/event/authentification_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/state/authentification_state.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

class SignUpScrenn extends StatefulWidget {
  const SignUpScrenn({super.key});

  @override
  State<SignUpScrenn> createState() => _SignUpScrennState();
}

class _SignUpScrennState extends State<SignUpScrenn> {
  late bool isSignUp = false;

  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool isChecked = false;

  late String selectedOptionss = "";

  String? selectedValues;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Column(
        children: [
          BlocBuilder<AuthentificationSignUpBloc, AuthentificationState>(
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
                  context.read<AuthentificationSignUpBloc>().add(
                    AuthentificationEvent.changeEmail(email),
                  );
                },
              );
            },
          ),

          SizedBox(height: 4.h),

          Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            child:
                BlocBuilder<AuthentificationSignUpBloc, AuthentificationState>(
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
                        context.read<AuthentificationSignUpBloc>().add(
                          AuthentificationEvent.changePassword(password),
                        );

                        if (state.password.isValid) {
                          FocusScope.of(context).unfocus();
                        }
                      },
                    );
                  },
                ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            child:
                BlocBuilder<AuthentificationSignUpBloc, AuthentificationState>(
                  builder: (context, state) {
                    return CustomeFormsSigin(
                      readOnly: state.status.isInProgress,
                      textInputType: TextInputType.number,
                      prefixIcon: Icon(
                        Icons.local_fire_department_rounded,
                        color: Colors.amberAccent,
                      ),
                      textLabel: "Entrer autre numéro d'urgence",
                      errorText: state.remenber.isPure || state.remenber.isValid
                          ? null
                          : '',
                      msgError: '',
                      onChanged: (remenber) {
                        context.read<AuthentificationSignUpBloc>().add(
                          AuthentificationEvent.changeRemenber(remenber),
                        );
                      },
                    );
                  },
                ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 8.h),
            child: Row(
              children: [
                BlocBuilder<AuthentificationSignUpBloc, AuthentificationState>(
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () async {
                        setState(() {
                          isChecked = !isChecked;
                        });

                        final conditon = await showModalBottomSheet<bool>(
                          context: context,
                          backgroundColor: MyColorName.white,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25),
                            ),
                          ),
                          builder: (BuildContext _) {
                            return AppPoliticUseCaseWidegt();
                          },
                        );

                        log("information ==$conditon");

                        if (conditon == null) {
                          context.read<AuthentificationSignUpBloc>().add(
                            AuthentificationEvent.submitSignup(),
                          );
                        }
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: isChecked ? Colors.black : Colors.transparent,
                          border: Border.all(
                            color: isChecked ? Colors.black : Colors.grey,
                            width: 2,
                          ),
                          boxShadow: isChecked
                              ? [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ]
                              : [],
                        ),
                        child: isChecked
                            ? const Icon(
                                Icons.check,
                                size: 18,
                                color: Colors.white,
                              )
                            : null,
                      ),
                    );
                  },
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    "J'accepte les conditions d'utilisation",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: MyColorName.textPrimaryDark,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 8.h, bottom: 15.h),

            child:
                BlocBuilder<AuthentificationSignUpBloc, AuthentificationState>(
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
                                  offset: const Offset(0, 8),
                                ),
                              ],
                      ),
                      child: CustomeButton(
                        isInProgress: state.status.isInProgress,
                        onTap: state.status.isInProgress
                            ? null
                            : () {
                                context.read<AuthentificationSignUpBloc>().add(
                                  AuthentificationEvent.submitSignup(),
                                );
                              },
                        btnBackground: state.status.isInProgress || !isChecked
                            ? Colors.black12
                            : MyColorName.black,
                        btnTextColor: state.status.isInProgress || !isChecked
                            ? MyColorName.black
                            : MyColorName.white,
                        btnText: "Creer un compte",
                        btnTextSize: 13.sp,
                        elevation: 19.h,
                      ),
                    );
                  },
                ),
          ),
        ],
      ),
    );
  }
}

class AppPoliticUseCaseWidegt extends StatelessWidget {
  const AppPoliticUseCaseWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.9.sh,
      width: MediaQuery.sizeOf(context).width.sw,
      decoration: BoxDecoration(
        color: MyColorName.backgroundIvory,
        borderRadius: BorderRadius.circular(11.r),
      ),
      child: Scrollbar(
        radius: Radius.circular(11.r),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 3.h,
                width: 0.3.sw,
                margin: EdgeInsets.only(top: 10.h, bottom: 30.h),
                decoration: BoxDecoration(
                  color: MyColorName.black,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomeText(
                    texte: "CONDITIONS GÉNÉRALES D’UTILISATION",
                    texteSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: MyColorName.black,
                  ),

                  SizedBox(height: 12.h),

                  CustomeText(
                    texte:
                        "Les présentes Conditions Générales d’Utilisation (CGU) régissent l’accès et l’utilisation de l’application Casa, plateforme numérique permettant aux utilisateurs de rechercher, comparer et réserver des hébergements hôteliers en ligne.",
                    texteSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: MyColorName.black,
                  ),

                  SizedBox(height: 10.h),

                  CustomeText(
                    texte: "1. Objet",
                    texteSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: MyColorName.black,
                  ),

                  CustomeText(
                    texte:
                        "Casa agit comme intermédiaire entre les utilisateurs et les établissements hôteliers partenaires. Toute utilisation de l’application implique l’acceptation sans réserve des présentes conditions.",
                    texteSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: MyColorName.black,
                  ),

                  SizedBox(height: 10.h),

                  CustomeText(
                    texte: "2. Création de compte",
                    texteSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: MyColorName.black,
                  ),

                  CustomeText(
                    texte:
                        "Pour effectuer une réservation, l’utilisateur doit créer un compte en fournissant des informations exactes et à jour. Il est responsable de la confidentialité de ses identifiants.",
                    texteSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: MyColorName.black,
                  ),

                  SizedBox(height: 10.h),

                  CustomeText(
                    texte: "3. Réservations",
                    texteSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: MyColorName.black,
                  ),

                  CustomeText(
                    texte:
                        "Les réservations sont soumises à la disponibilité des hôtels. Une réservation est confirmée après validation du paiement et réception d’une notification de confirmation.",
                    texteSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: MyColorName.black,
                  ),

                  SizedBox(height: 10.h),

                  CustomeText(
                    texte: "4. Paiement",
                    texteSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: MyColorName.black,
                  ),

                  CustomeText(
                    texte:
                        "Les paiements peuvent être effectués via les moyens proposés dans l’application (carte bancaire, mobile money, etc.). En cas d’échec du paiement, la réservation ne sera pas validée.",
                    texteSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: MyColorName.black,
                  ),

                  SizedBox(height: 10.h),

                  CustomeText(
                    texte: "5. Annulation et remboursement",
                    texteSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: MyColorName.black,
                  ),

                  CustomeText(
                    texte:
                        "Les conditions d’annulation et de remboursement dépendent de la politique propre à chaque établissement. Ces conditions sont affichées avant la validation de la réservation.",
                    texteSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: MyColorName.black,
                  ),

                  SizedBox(height: 10.h),

                  CustomeText(
                    texte: "6. Responsabilité",
                    texteSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: MyColorName.black,
                  ),

                  CustomeText(
                    texte:
                        "Casa ne peut être tenue responsable des services fournis par les hôtels partenaires ni des éventuels litiges survenus durant le séjour.",
                    texteSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: MyColorName.black,
                  ),

                  SizedBox(height: 10.h),

                  CustomeText(
                    texte: "7. Protection des données",
                    texteSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: MyColorName.black,
                  ),

                  CustomeText(
                    texte:
                        "Les données personnelles collectées sont utilisées uniquement pour la gestion des réservations et l’amélioration du service, conformément à la politique de confidentialité de l’application.",
                    texteSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: MyColorName.black,
                  ),
                  SizedBox(height: 0.3.sh),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
