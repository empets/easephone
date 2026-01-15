import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
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
      body: SafeArea(
        top: false,
        bottom: true,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                MyAssets.icons.backImage.path,
                fit: BoxFit.cover,
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: currentIndex == 2 ? 0.95.sh : 0.2.sh,
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                margin: currentIndex == 2
                    ? EdgeInsets.zero
                    : EdgeInsets.symmetric(vertical: 32.h),
                decoration: BoxDecoration(
                  color: MyColorName.backgroundIvory.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(17.r),
                    topRight: Radius.circular(17.r),
                  ),
                ),
                child: PageView.builder(
                  controller: controller,
                  physics: currentIndex == 2
                      ? NeverScrollableScrollPhysics()
                      : AlwaysScrollableScrollPhysics(),
                  onPageChanged: (value) {
                    if (value == 2) {
                      Navigator.of(context).push(fadeRoute(SignIn()));
                    }
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomeText(
                          texte:
                              'Your Dream Home Awaits Tailored just for you! Discover homes that match your Discover homes that match your unique preferences',
                          texteSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: MyColorName.white,
                        ),
                        SizedBox(height: 8.h),
                        SizedBox(height: 10.h),
                      ],
                    );
                  },
                ),
              ),
            ),
            if (currentIndex != 2) ...[
              Positioned(
                bottom: 2,
                left: 0,
                right: 0,
                child: Container(
                  height: 0.046.sh,
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: MyColorName.backgroundIvory.withValues(alpha: 0.2),
                  ),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: ColorTransitionEffect(
                      dotColor: MyColorName.white,
                      activeDotColor: Colors.amber,
                      dotHeight: 6.h,
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
