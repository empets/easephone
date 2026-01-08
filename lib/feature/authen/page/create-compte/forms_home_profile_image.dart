import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/navigator_widget/custome_app_bar.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/create_compte_image.bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/event/create_compte_event.dart';
import 'package:com.example.epbomi/feature/authen/page/create-compte/forms_home_hebergement.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_screen.dart';
import 'package:com.example.epbomi/gen/assets.gen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class FormsHomeProfileImage extends StatefulWidget {
  const FormsHomeProfileImage({super.key});

  @override
  State<FormsHomeProfileImage> createState() => _FormsHomeProfileImageState();
}

class _FormsHomeProfileImageState extends State<FormsHomeProfileImage>
    with TickerProviderStateMixin {
  Future<File?> pickImage() async {
    final picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null)
      return null;
    else {
      context.read<CreateCompteImageBloc>().add(
        CreateCompteSendImage.image(image.path),
      );
      return File(image.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColorName.white,
      appBar: CustomAppBar(),
      body: BlocListener<CreateCompteImageBloc, ApiState<String>>(
        listener: (context, state) {
          if (state is SuccessState<String>) {
            Navigator.of(context).push(fadeRoute(const HomeOverView()));
          }
          if (state is FailedState<String>) {
            return showAppSnackBar(
              context,
              color: MyColorName.errorRed,
              iconRight: Icons.close,
              message: 'Impossibe de fair cette opération',
            );
          }
        },
        child: SafeArea(
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
                            : Stack(
                                children: [
                                  BlocBuilder<
                                    CreateCompteImageBloc,
                                    ApiState<String>
                                  >(
                                    builder: (context, state) {
                                      return Container(
                                        margin: EdgeInsets.only(
                                          top: 0.05.sh,
                                          bottom: 30.h,
                                        ),
                                        padding: EdgeInsets.all(9.h),
                                        decoration: BoxDecoration(
                                          // border: Border.all(
                                          //   color: MyColorName.black.withValues(
                                          //     alpha: 0.4,
                                          //   ),
                                          // ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            100.r,
                                          ),
                                          child: SvgPicture.asset(
                                            MyAssets
                                                .icons
                                                .undrawNewsfeed8ms9
                                                .path,
                                            height: 200.h,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  Positioned(
                                    bottom: 30.h,
                                    right: 28.w,
                                    child:
                                        BlocBuilder<
                                          CreateCompteImageBloc,
                                          ApiState<String>
                                        >(
                                          builder: (context, state) {
                                            return GestureDetector(
                                              onTap: () {
                                                pickImage();
                                              },
                                              child: Container(
                                                padding: const EdgeInsets.all(
                                                  8.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: MyColorName.black,
                                                  ),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: FaIcon(
                                                  FontAwesomeIcons.pencil,
                                                  color: MyColorName.black,
                                                  size: 18.h,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                  ),
                                ],
                              ),
                      ),

                      SizedBox(height: 20.h),

                      CustomeButton(
                        btnBackground: MyColorName.textPrimaryDark,
                        btnTextColor: MyColorName.white,
                        btnText: 'Valider',
                        btnRadius: 10.r,
                        btnTextSize: 15.sp,
                        onTap: () {
                          Navigator.of(
                            context,
                          ).push(fadeRoute(const FormsHomeHebergement()));
                        },
                      ),
                    ],
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
