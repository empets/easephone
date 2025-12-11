import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/navigator_widget/custome_app_bar.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/feature/authen/page/create-compte/forms_home_hebergement.dart';
import 'package:com.example.epbomi/gen/assets.gen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FormsHomeProfileImage extends StatefulWidget {
  const FormsHomeProfileImage({super.key});

  @override
  State<FormsHomeProfileImage> createState() => _FormsHomeProfileImageState();
}

class _FormsHomeProfileImageState extends State<FormsHomeProfileImage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      builder: (context, isKeyboardVisible) => isKeyboardVisible
                          ? SizedBox()
                          : Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 0.05.sh,
                                    bottom: 30.h,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100.r),
                                    child: SvgPicture.asset(
                                      MyAssets.icons.undrawNewsfeed8ms9.path,
                                      height: 200.h,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10.h,
                                  right: 2.w,
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: MyColorName.greyAvatar,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: FaIcon(
                                      FontAwesomeIcons.pencil,
                                      color: MyColorName.backgroundIvory,
                                      size: 18.h,
                                    ),
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
    );
  }
}
