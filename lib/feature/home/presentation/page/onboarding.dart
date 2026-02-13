import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/feature/authen/page/create-compte/authentification_screen.dart';
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

  List<Map<String, dynamic>> onboardingItem = [
    {
      'image': MyAssets.icons.backImage.path,
      'title': 'Bienvenue dans votre hôtel',
      'description':
          'Commandez des services, découvrez les profils et profitez pleinement de votre séjour, directement depuis l’application.',
    },
    {
      'image': MyAssets.icons.pexelsCottonbro4065165.path,
      'title': 'Reservez, en toute simplicité',
      'description':
          'Room service, ménage, blanchisserie ou assistance : passez vos reservation en quelques clics, sans appeler la réception.',
    },
    {
      'image': MyAssets.icons.pexelsVruyrMartirosyan14473542792902.path,
      'title': 'Un séjour plus agréable',
      'description':
          'Gagnez du temps, évitez les déplacements et profitez d’un service rapide et personnalisé.',
    },
  ];

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
        itemCount: onboardingItem.length,
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
                      onboardingItem[index]['image'],
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
                  texte: onboardingItem[index]['title'],
                  color: MyColorName.black,
                  fontWeight: FontWeight.w400,
                  texteSize: 20.sp,
                ),

                SizedBox(height: 15.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: CustomeText(
                    texte: onboardingItem[index]['description'],
                    color: MyColorName.black,
                    fontWeight: FontWeight.w400,
                    texteSize: 13.sp,
                    letterSpacing: 0.2.sp,
                    textAlign: TextAlign.center,
                  ),
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
                count: onboardingItem.length,
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
                  fadeRoute(const AuthentificationScreen()),
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
