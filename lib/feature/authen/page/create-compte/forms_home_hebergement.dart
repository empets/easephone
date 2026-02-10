import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/form/form.dart';
import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/navigator_widget/custome_app_bar.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/create_compte_herb_usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/send_image.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/create_compte_bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/create_compte_image.bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/event/create_compte_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/state/create_compte_state.dart';
import 'package:com.example.epbomi/feature/authen/page/create-compte/forms_home_profile_image.dart';
import 'package:com.example.epbomi/gen/assets.gen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:formz/formz.dart';
import 'package:google_fonts/google_fonts.dart';

class FormsHomeHebergement extends StatefulWidget {
  const FormsHomeHebergement({super.key});

  @override
  State<FormsHomeHebergement> createState() => _FormsHomeHebergementState();
}

class _FormsHomeHebergementState extends State<FormsHomeHebergement>
    with TickerProviderStateMixin {
  late String selectedOptions = "";
  String? selectedOption;

  final List<Map<String, dynamic>> items = [
    {
      'title': 'Actif Service de restauration',
      'subtitle': 'Service haut débit avec installation rapide',
      'value': 'oui',
    },
    {
      'title': 'Service de restauration non actif',
      'subtitle': 'Support disponible 24h/24 et 7j/7',
      'value': 'non',
    },
  ];

    late String selectedOptionss = "";
  String? selectedOptionsss;

  final List<Map<String, dynamic>> itemss = [
    {
      'title': 'Résidence neblé',
      'subtitle': 'Service haut débit avec installation rapide',
      'value': 'Hôtel',
    },
    {
      'title': 'Hôtel',
      'subtitle': 'Support disponible 24h/24 et 7j/7',
      'value': 'Résidence',
    },
  ];

      String? selectedValue;

 final List<Map<String, String>> options = List.generate(
  500, // 500 valeurs
  (index) {
    final int value = (index + 1) * 1000;
    return {
      "id": value.toString(),
      "label": "${value.toString().replaceAllMapped(
        RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
        (Match m) => '${m[1]} ',
      )} FCFA",
    };
  },
);

      String? selectedValues;

 final List<Map<String, String>> optionss = List.generate(
  500, // 500 valeurs
  (index) {
    final int value = (index + 1) * 1000;
    return {
      "id": value.toString(),
      "label": "${value.toString().replaceAllMapped(
        RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
        (Match m) => '${m[1]} ',
      )} FCFA",
    };
  },
);

  late bool isSelectedHotel = false;


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateCompteHBloc(
        createComptHebUsercase: getIt<CreateComptHebUsercase>(),
      ),
      child: BlocListener<CreateCompteHBloc, CreateCompteHbState>(
        listener: (context, state) {
          if (state.status.isSuccess) {
            // BlocProvider(
            //   create: (context) => CreateCompteImageBloc(
            //     compteSendImageUsercase:
            //         getIt<CreateCoompteSendImageUsercase>(),
            //   ),
            //   c
            // );
            Navigator.of(context).push(
              fadeRoute(
                BlocProvider(
                  create: (context) => CreateCompteImageBloc(
                    compteSendImageUsercase:
                        getIt<CreateCoompteSendImageUsercase>(),
                  ),
                  child: const FormsHomeProfileImage(),
                ),
              ),
            );

            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => BlocProvider(
            //       create: (context) => CreateCompteImageBloc(
            //         compteSendImageUsercase:
            //             getIt<CreateCoompteSendImageUsercase>(),
            //       ),
            //       child: FormsHomeProfileImage(),
            //     ),
            //   ),
            // );
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
                    Column(
                      children: [
                        KeyboardVisibilityBuilder(
                          builder: (context, isKeyboardVisible) =>
                              isKeyboardVisible
                              ? SizedBox()
                              : Container(
                                  margin: EdgeInsets.only(
                                    top: 0.05.sh,
                                    bottom: 26.h,
                                  ),
                                  child: SvgPicture.asset(
                                    MyAssets.icons.undrawToDoListO3jf.path,
                                    height: 150.h,
                                  ),
                                ),
                        ),
                          BlocBuilder<CreateCompteHBloc, CreateCompteHbState>(
                          builder: (context, state) {
                            return Container(
                              margin: EdgeInsets.only(top: 9.h),
                              child: Column(
                                children: List.generate(itemss.length, (index) {
                                  final item = itemss[index];

                                  final isSelected =
                                      item['title'] == ['subtitle'];

                                  return Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5.h,
                                    ),
                                    margin: EdgeInsets.only(bottom: 13.h),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: MyColorName.greyAvatar
                                            .withValues(alpha: 0.4),
                                      ),
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            CustomeFormRadio(
                                              groupValue: selectedOptionss,
                                              textLabel: item['title'],
                                              labelStyle: GoogleFonts.roboto(
                                                color: MyColorName.black,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.15.sp,
                                              ),
                                              value: item['value'],
                                              isSelected: false,
                                              onChanged: (option) {
                                                if (option != null) {
                                                  setState(
                                                    () {
                                                      selectedOptionss =
                                                        option;
                                                      isSelectedHotel =! isSelectedHotel;
                                                    },
                                                  );
                                                  if(isSelectedHotel) {
                                                    context.read<CreateCompteHBloc>().add(
                                                      CreateCompteHebEvent.changeAverageBed('0'),
                                                    );
                                                  }
                                                }
                                                context
                                                    .read<CreateCompteHBloc>()
                                                    .add(
                                                      CreateCompteHebEvent.changeTypeHome(
                                                        option.toString(),
                                                      ),
                                                    );
                                              },
                                            ),
                                          ],
                                        ),

                                        // ✅ Affiche la description uniquement si sélectionné
                                        if (isSelected)
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                              vertical: 7.h,
                                              horizontal: 10.w,
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              vertical: 5.h,
                                              horizontal: 9.w,
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(
                                                0xFF4BB4E6,
                                              ).withValues(alpha: 0.2),
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                            ),
                                            child: Text(
                                              item["subtitle"],
                                              style: GoogleFonts.roboto(
                                                color: const Color(0xFF4BB4E6),
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.1,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                         
                       
                        BlocBuilder<CreateCompteHBloc, CreateCompteHbState>(
                          builder: (context, state) {
                            return Container(
                              margin: EdgeInsets.symmetric(vertical: 9.h),
                              child: ProductionFormCustomer(
                                textLabel: 'Nombre de chambre',
                                errorText:
                                    state.roomNumber.isPure ||
                                        state.roomNumber.isValid
                                    ? null
                                    : '',
                                textInputType: TextInputType.number,
                                prefixIcon: Icon(Icons.roofing_rounded),
                                msgError: 'Veuillez renseigner ce champ',
                                onChanged: (rom) {
                                  context.read<CreateCompteHBloc>().add(
                                    CreateCompteHebEvent.changeRoomNumber( rom ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        if (!isSelectedHotel)
                        BlocBuilder<CreateCompteHBloc, CreateCompteHbState>(
                          builder: (context, state) {
                            return Container(
                              margin: EdgeInsets.symmetric(vertical: 9.h),
                              child: ProductionFormCustomer(
                                textLabel: 'Moyenne de douche par suite',
                                errorText:
                                    state.averageBed.isPure ||
                                        state.averageBed.isValid
                                    ? null
                                    : '',
                                textInputType: TextInputType.number,
                                prefixIcon: Icon(Icons.bed_outlined),
                                msgError: 'Veuillez renseigner ce champ',
                                onChanged: (averageBed) {
                                  context.read<CreateCompteHBloc>().add(
                                    CreateCompteHebEvent.changeAverageBed(
                                      !isSelectedHotel ? averageBed : "0",
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        BlocBuilder<CreateCompteHBloc, CreateCompteHbState>(
                          builder: (context, state) {
                            return Container(
                              margin: EdgeInsets.only(top: 9.h),
                              child: Column(
                                children: List.generate(items.length, (index) {
                                  final item = items[index];

                                  final isSelected =
                                      item['title'] == ['subtitle'];

                                  return Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5.h,
                                    ),
                                    margin: EdgeInsets.only(bottom: 13.h),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: MyColorName.greyAvatar
                                            .withValues(alpha: 0.4),
                                      ),
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            CustomeFormRadio(
                                              groupValue: selectedOptions,
                                              textLabel: item['title'],
                                              labelStyle: GoogleFonts.roboto(
                                                color: MyColorName.black,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.15.sp,
                                              ),
                                              value: item['value'],
                                              isSelected: false,
                                              onChanged: (option) {
                                                if (option != null) {
                                                  setState(
                                                    () => selectedOptions =
                                                        option,
                                                  );
                                                }
                                                context
                                                    .read<CreateCompteHBloc>()
                                                    .add(
                                                      CreateCompteHebEvent.changeSelectedOption(
                                                        option.toString(),
                                                      ),
                                                    );
                                              },
                                            ),
                                          ],
                                        ),

                                        // ✅ Affiche la description uniquement si sélectionné
                                        if (isSelected)
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                              vertical: 7.h,
                                              horizontal: 10.w,
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              vertical: 5.h,
                                              horizontal: 9.w,
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(
                                                0xFF4BB4E6,
                                              ).withValues(alpha: 0.2),
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                            ),
                                            child: Text(
                                              item["subtitle"],
                                              style: GoogleFonts.roboto(
                                                color: const Color(0xFF4BB4E6),
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.1,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                          BlocBuilder<CreateCompteHBloc, CreateCompteHbState>(
                            builder: (context, state) {
                              return Container(
                                              margin: EdgeInsets.symmetric(vertical: 9.h),
                                          padding:  EdgeInsets.symmetric(horizontal: 12),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey.withOpacity(.5)),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                              isExpanded: true,
                                              dropdownColor: MyColorName.white,
                                              hint: Text(
                                                "Prix maximum par nuit",
                                                style: GoogleFonts.roboto(color: Colors.grey, fontSize: 14.sp),
                                              ),
                                              value: selectedValue,
                                               style: GoogleFonts.roboto(color: Colors.black, fontSize: 14.sp),
                                              icon: const Icon(Icons.keyboard_arrow_down),
                                              items: options
                                                  .map(
                                                    (item) => DropdownMenuItem<String>(
                                                      value: item["id"],
                                                      child: Text(item["label"]!),
                                                    ),
                                                  )
                                                  .toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedValue = value;
                                                });
                                                context.read<CreateCompteHBloc>().add(
                                                  CreateCompteHebEvent.changPrixMin(value!),
                                                );
                                              },
                                            ),
                                          ),
                                        );
                            },
                          ),

                BlocBuilder<CreateCompteHBloc, CreateCompteHbState>(
                  builder: (context, state) {
                    return Container(
                                    margin: EdgeInsets.symmetric(vertical: 9.h),
                                padding:  EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.withOpacity(.5)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    isExpanded: true,
                                    dropdownColor: MyColorName.white,
                                    hint: Text(
                                      "Prix maximum par nuit",
                                      style: GoogleFonts.roboto(color: Colors.grey, fontSize: 14.sp),
                                    ),
                                    value: selectedValues,
                                     style: GoogleFonts.roboto(color: Colors.black, fontSize: 14.sp),
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: optionss
                                        .map(
                                          (item) => DropdownMenuItem<String>(
                                            value: item["id"],
                                            child: Text(item["label"]!),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        selectedValues = value;
                                      });
                                       context.read<CreateCompteHBloc>().add(
                                        CreateCompteHebEvent.changPrixMax(value!),
                                      );
                                    },
                                  ),
                                ),
                              );
                  },
                ),
          
          

                        BlocBuilder<CreateCompteHBloc, CreateCompteHbState>(
                          builder: (context, state) {
                            return Container(
                              margin: EdgeInsets.symmetric(vertical: 9.h),
                              child: ProductionFormCustomer(
                                textLabel: 'Décrivez votre activité',
                                letSpace: [],
                                minLines: 3,
                                maxLines: 3,
                                errorText:
                                    state.description.isPure ||
                                        state.description.isValid
                                    ? null
                                    : '',
                                prefixIcon: Icon(Icons.edit_note),
                                msgError: 'Veuillez renseigner ce champ',
                                onChanged: (description) {
                                  context.read<CreateCompteHBloc>().add(
                                    CreateCompteHebEvent.changeDescription(
                                      description,
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 19.h),

                        BlocBuilder<CreateCompteHBloc, CreateCompteHbState>(
                          builder: (context, state) {
                            return CustomeButton(
                              isInProgress: state.status.isInProgress,
                              btnBackground:
                                  state.status.isInProgress || !state.isValide
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
                                      context.read<CreateCompteHBloc>().add(
                                        CreateCompteHebEvent.submit(),
                                      );
                                    },
                            );
                          },
                        ),

                        SizedBox(height: 19.h),
                      ],
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
