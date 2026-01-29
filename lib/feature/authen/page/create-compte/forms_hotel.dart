import 'package:com.example.epbomi/core/form/form.dart';
import 'package:com.example.epbomi/core/navigator_widget/custome_app_bar.dart';
import 'package:com.example.epbomi/gen/assets.gen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FormsHotel extends StatefulWidget {
  const FormsHotel({super.key});

  @override
  State<FormsHotel> createState() => _FormsHotelState();
}

class _FormsHotelState extends State<FormsHotel> {

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





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColorName.white,
          appBar: CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
                  KeyboardVisibilityBuilder(
                                builder: (context, isKeyboardVisible) =>
                                    isKeyboardVisible
                                    ? SizedBox()
                                    : Container(
                                        margin: EdgeInsets.only(
                                          top: 0.02.sh,
                                          bottom: 20.h,
                                        ),
                                        child: SvgPicture.asset(
                                          MyAssets.icons.undrawFitnessGuyAvatar50y6.path,
                                          height: 0.20.sh,
                                        ),
                                      ),
                              ),
          
                             ProductionFormCustomer(
                                  textLabel: 'Nombre de chambre',
                                  errorText:
                                      // state.roomNumber.isPure ||
                                      //     state.roomNumber.isValid
                                      // ? null
                                      // : 
                                      '',
                                  textInputType: TextInputType.number,
                                  prefixIcon: Icon(Icons.roofing_rounded),
                                  msgError: 'Veuillez renseigner ce champ',
                                  onChanged: (rom) {
                                    // context.read<CreateCompteHBloc>().add(
                                    //   CreateCompteHebEvent.changeRoomNumber(rom),
                                    // );
                                  },
                                ),
          
                                Container(
                                // margin: EdgeInsets.only(top: 3.h),
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
                                                  // context
                                                  //     .read<CreateCompteHBloc>()
                                                  //     .add(
                                                  //       CreateCompteHebEvent.changeSelectedOption(
                                                  //         option.toString(),
                                                  //       ),
                                                  //     );
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
                              ),
          
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(.5)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    dropdownColor: MyColorName.white,
                    hint: Text(
                      "Prix minimum par nuit",
                      style: GoogleFonts.roboto(color: Colors.black, fontSize: 14.sp),
                    ),
                    style: GoogleFonts.roboto(color: Colors.black, fontSize: 14.sp),
                    value: selectedValue,
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
                    },
                  ),
                ),
              ),

                   Container(
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
                    },
                  ),
                ),
              ),
          
          
                
                                
          
          
          
                                Container(
                                margin: EdgeInsets.symmetric(vertical: 9.h),
                                child: ProductionFormCustomer(
                                  textLabel: 'Décrivez votre activité',
                                  letSpace: [],
                                  minLines: 3,
                                  maxLines: 3,
                                  errorText:
                                      // state.description.isPure ||
                                      //     state.description.isValid
                                      // ? null
                                      // : 
                                      '',
                                  prefixIcon: Icon(Icons.edit_note),
                                  msgError: 'Veuillez renseigner ce champ',
                                  onChanged: (description) {
                                    // context.read<CreateCompteHBloc>().add(
                                      // CreateCompteHebEvent.changeDescription(
                                      //   description,
                                      // ),
                                    // );
                                  },
                                ),
                              )
           
           
            ],
          ),
        )
      )
    );
  }
}