import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/data/service/remote/google_authen/service_firebase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/authen_by_mail_usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/signin_usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/auth-by-mail/auth_by_mail_bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/auth-by-mail/state/auth_by_mail_state.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/bloc_signin.dart';
import 'package:com.example.epbomi/feature/authen/page/signin.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_screen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              BlocSignin(googleAuthService: GoogleAuthService()),
        ),
        BlocProvider(
          create: (context) => AuthByMailBloc(
            signinUsercase: getIt<SigninUsercase>(),
            authenByMailUsercase: getIt<AuthenByMailUsercase>(),
          ),
        ),
      ],
      child: BlocListener<AuthByMailBloc, AuthByMailState>(
        listener: (context, state) {
          if (state.status.isSuccess) {
            Navigator.of(context).push(fadeRoute(const HomeOverView()));
          }

          if (state.status.isFailure) {
            if (state.errorMessage.contains(
              "Cet utilisateur existe pas creer un compte",
            )) {
              showAppSnackBar(
                context,
                color: MyColorName.errorRed,
                iconRight: Icons.close,
                message: state.errorMessage,
              );
              setState(() {
                isSignUp = true;
              });
            }

            if (state.errorMessage.contains(
              "Cet utilisateur existe deja creer un compte",
            )) {
              showAppSnackBar(
                context,
                color: MyColorName.errorRed,
                iconRight: Icons.close,
                message: state.errorMessage,
              );
              setState(() {
                isSignUp = false;
              });
            }
          }
        },
        child: Scaffold(
          body: SafeArea(
            top: false,
            bottom: true,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?fm=jpg&q=60&w=3000',
                    fit: BoxFit.cover,
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: currentIndex == 2 ? 0.95.sh : 0.2.sh,
                    padding: EdgeInsets.symmetric(
                      vertical: 10.h,
                      horizontal: 10.w,
                    ),
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
                        setState(() {
                          currentIndex = value;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (index == 2) ...[
                              SignIn(isSignUp: isSignUp),
                            ] else ...[
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
                        color: MyColorName.backgroundIvory.withValues(
                          alpha: 0.2,
                        ),
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
        ),
      ),
    );
  }
}
