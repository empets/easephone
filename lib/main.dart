import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/observer/bloc_observer.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/state/signin_state.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_screen.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/onboarding.dart';
import 'package:com.example.epbomi/router/bloc/app_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAteU6V1OfMMleH-fM2RHjLuDX9OvdbCGU",
      appId: "1:18357377169:android:751c75c62dabcbf9844730",
      messagingSenderId: "431538920933",
      projectId: "authenfication-9fc25",
      storageBucket: "authenfication-9fc25.appspot.com",
    ),
  );
  Bloc.observer = SimpleBlocObserver();
  configureDependencies();
  // final prefs = await SharedPreferences.getInstance();

  // getIt.registerSingleton<SharedPreferences>(prefs);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AppRouteBloc()
            ..add(SigninEvent.googleAuthen()),
      child: BlocListener<AppRouteBloc, SigninState>(
        listener: (context, state) {
          if (state.status.isFailure) {
            return showAppSnackBar(
              context,
              iconRight: Icons.close,
              message: 'Service momentanement indisponible',
            );
          }
        },
        child: BlocBuilder<AppRouteBloc, SigninState>(
          builder: (context, state) {
            return ScreenUtilInit(
              designSize: const Size(360, 690),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (_, child) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                    textTheme: Typography.englishLike2018.apply(
                      fontSizeFactor: 1.sp,
                    ),
                  ),
                  home: child,
                );
              },
              child: state.status.isFailure
                  ? OnboardingScreen()
                  : HomeOverView(),
            );
          },
        ),
      ),
    );
  }
}
