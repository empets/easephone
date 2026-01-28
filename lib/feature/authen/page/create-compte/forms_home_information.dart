import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/form/form.dart';
import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/map/models/map_location.dart';
import 'package:com.example.epbomi/core/navigator_widget/custome_app_bar.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/create_compte_usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/create_compte_bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/event/create_compte_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/state/create_compte_state.dart';
import 'package:com.example.epbomi/feature/authen/page/create-compte/forms_home_hebergement.dart';
import 'package:com.example.epbomi/gen/assets.gen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';

class FormsHomeInformation extends StatefulWidget {
  const FormsHomeInformation({
    super.key,
    required this.mapLocation,
    required this.adress,
  });

  final MapLocation mapLocation;
  final String adress;

  @override
  State<FormsHomeInformation> createState() => _FormsHomeInformationState();
}

class _FormsHomeInformationState extends State<FormsHomeInformation>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateCompteBloc(
        comptemarchantUsercase: getIt<CreateComptemarchantUsercase>(),
      ),
      child: BlocListener<CreateCompteBloc, CreateCompteState>(
        listener: (context, state) {
          if (state.status.isSuccess) {
            Navigator.of(context).push(fadeRoute(const FormsHomeHebergement()));
          }
        },
        child: Scaffold(
          backgroundColor: MyColorName.white,
          appBar: CustomAppBar(),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                child: Stack(
                  children: [
                    BlocBuilder<CreateCompteBloc, CreateCompteState>(
                      builder: (context, state) {
                        return Column(
                          children: [
                            KeyboardVisibilityBuilder(
                              builder: (context, isKeyboardVisible) =>
                                  isKeyboardVisible
                                  ? SizedBox()
                                  : Container(
                                      margin: EdgeInsets.only(
                                        top: 0.05.sh,
                                        bottom: 30.h,
                                      ),
                                      child: SvgPicture.asset(
                                        MyAssets.icons.undrawFitnessGuyAvatar50y6.path,
                                        height: 200.h,
                                      ),
                                    ),
                            ),

                            BlocBuilder<CreateCompteBloc, CreateCompteState>(
                              builder: (context, state) {
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 9.h),
                                  child: ProductionFormCustomer(
                                    letSpace: [],
                                    textLabel: 'Manager name',
                                    errorText:
                                        state.nomResidence.isPure ||
                                            state.nomResidence.isValid
                                        ? null
                                        : '',
                                    prefixIcon: Icon(Icons.roofing_rounded),
                                    msgError: 'Veuillez renseigner ce champ',
                                    onChanged: (nom) {
                                      context.read<CreateCompteBloc>().add(
                                        CreateCompteEvent.changeResidenceName(
                                          nom,
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),

                            BlocBuilder<CreateCompteBloc, CreateCompteState>(
                              builder: (context, state) {
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 9.h),
                                  child: ProductionFormCustomer(
                                    textLabel: 'Home Name',
                                    letSpace: [],
                                    errorText:
                                        state.specialite.isPure ||
                                            state.specialite.isValid
                                        ? null
                                        : '',
                                    prefixIcon: Icon(Icons.person_3_outlined),
                                    msgError: 'Veuillez renseigner ce champ',
                                    onChanged: (specialite) {
                                      context.read<CreateCompteBloc>().add(
                                        CreateCompteEvent.changeSpecialite(
                                          specialite,
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),

                            BlocBuilder<CreateCompteBloc, CreateCompteState>(
                              builder: (context, state) {
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 9.h),
                                  child: ProductionFormCustomer(
                                    textLabel: 'Email',
                                    letSpace: [],
                                    errorText:
                                        state.email.isPure ||
                                            state.email.isValid
                                        ? null
                                        : '',
                                    prefixIcon: Icon(Icons.email),
                                    textInputType: TextInputType.emailAddress,
                                    msgError: 'Veuillez renseigner ce champ',
                                    onChanged: (email) {
                                      context.read<CreateCompteBloc>().add(
                                        CreateCompteEvent.changeEmail(email),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),

                            BlocBuilder<CreateCompteBloc, CreateCompteState>(
                              builder: (context, state) {
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 9.h),
                                  child: ProductionFormCustomer(
                                    textLabel: 'Numéro de téléphone',
                                    errorText:
                                        state.telephone.isPure ||
                                            state.telephone.isValid
                                        ? null
                                        : '',
                                    textInputType: TextInputType.phone,
                                    prefixIcon: Icon(Icons.call),
                                    msgError: 'Veuillez renseigner ce champ',
                                    onChanged: (phone) {
                                      context.read<CreateCompteBloc>().add(
                                        CreateCompteEvent.changeTelephone(
                                          phone,
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),

                            BlocBuilder<CreateCompteBloc, CreateCompteState>(
                              builder: (context, state) {
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 9.h),
                                  child: ProductionFormCustomer(
                                    textLabel: "What'sapp contact",
                                    errorText:
                                        state.telephone.isPure ||
                                            state.telephone.isValid
                                        ? null
                                        : '',
                                    textInputType: TextInputType.phone,
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 12.w,
                                        vertical: 12.h,
                                      ),
                                      child: FaIcon(FontAwesomeIcons.whatsapp),
                                    ),
                                    msgError: 'Veuillez renseigner ce champ',
                                    onChanged: (phone) {
                                      context.read<CreateCompteBloc>().add(
                                        CreateCompteEvent.changeWhatsapp(phone),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),

                            BlocBuilder<CreateCompteBloc, CreateCompteState>(
                              builder: (context, state) {
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 9.h),
                                  child: ProductionFormCustomer(
                                    textLabel: 'Faceboock name',
                                    letSpace: [],
                                    errorText:
                                        state.adresse.isPure ||
                                            state.adresse.isValid
                                        ? null
                                        : '',
                                    prefixIcon: Icon(Icons.facebook_outlined),
                                    msgError: 'Veuillez renseigner ce champ',
                                    onChanged: (adress) {
                                      context.read<CreateCompteBloc>().add(
                                        CreateCompteEvent.changeFacbokLinck(
                                          adress,
                                        ),
                                      );
                                      context.read<CreateCompteBloc>().add(
                                        CreateCompteEvent.changeAdresse(
                                          widget.adress,
                                        ),
                                      );
                                      context.read<CreateCompteBloc>().add(
                                        CreateCompteEvent.changeLat(
                                          widget.mapLocation.latitude
                                              .toString(),
                                        ),
                                      );
                                      context.read<CreateCompteBloc>().add(
                                        CreateCompteEvent.changelong(
                                          widget.mapLocation.longitude
                                              .toString(),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: 19.h),

                            BlocBuilder<CreateCompteBloc, CreateCompteState>(
                              builder: (context, state) {
                                return CustomeButton(
                                  isInProgress: state.status.isInProgress,
                                  btnBackground:
                                      state.status.isInProgress ||
                                          !state.isValide
                                      ? MyColorName.greyAvatar
                                      : MyColorName.textPrimaryDark,
                                  btnTextColor: MyColorName.white,
                                  btnText: 'Suivant',
                                  btnRadius: 10.r,
                                  btnTextSize: 15.sp,
                                  onTap: state.status.isInProgress
                                      ? null
                                      : () {
                                          FocusScope.of(context).unfocus();
                                          context.read<CreateCompteBloc>().add(
                                            CreateCompteEvent.submit(),
                                          );
                                        },
                                );
                              },
                            ),
                            SizedBox(height: 19.h),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
