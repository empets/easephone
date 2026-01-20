import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/global_params/global_params.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/feature/authen/page/signin.dart';
import 'package:com.example.epbomi/gen/assets.gen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController();
  late int currentIndex = 0;
  late bool isSignUp = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColorName.backgroundIvory,
      appBar: AppBar(
        backgroundColor: MyColorName.backgroundIvory,
        elevation: 0,
      ),

      body: ListView.builder(
        itemCount: 3,
        controller: controller,
        scrollDirection: Axis.horizontal, // 🔥 horizontal
        physics: const PageScrollPhysics(), // 🔥 effet page
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width, // 🔥 largeur écran
            height: 0.4.sh,

            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      MyAssets.icons.backImage.path,
                      fit: BoxFit.cover,
                      height: 0.5.sh,
                      width: MediaQuery.of(context).size.width,
                    ),

                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: 0.2.sh,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              MyColorName.backgroundIvory.withValues(
                                alpha: 0.2,
                              ),
                              MyColorName.backgroundIvory,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 0.03.sh),

                CustomeText(
                  texte: 'Casa new place is here',
                  color: MyColorName.black,
                  fontWeight: FontWeight.w400,
                  texteSize: 20.sp,
                ),

                SizedBox(height: 15.h),

                CustomeText(
                  texte: GlobalParams.poliqueOfConfidentialite.substring(
                    0,
                    100,
                  ),
                  color: MyColorName.black,
                  fontWeight: FontWeight.w400,
                  texteSize: 13.sp,
                  letterSpacing: 0.2.sp,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 0.16.sh,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 14.h, horizontal: 14.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ColorTransitionEffect(
                  dotColor: MyColorName.greyBorder,
                  activeDotColor: Colors.black,
                  dotHeight: 6.h,
                ),
              ),
            ),
            SizedBox(height: 26.h),
            CustomeButton(
              btnBackground: MyColorName.black,
              btnTextColor: MyColorName.white,
              btnText: "Suivant",
              btnTextSize: 14.sp,
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  fadeRoute(const SignIn()),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
