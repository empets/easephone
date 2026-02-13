import 'package:com.example.epbomi/core/global_params/global_params.dart';
import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/observer/bloc_observer.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/state/signin_state.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_screen.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/onboarding.dart';
import 'package:com.example.epbomi/router/bloc/app_bloc.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: GlobalParams.apiKey,
      appId: GlobalParams.appId,
      messagingSenderId: GlobalParams.messagingSenderId,
      projectId: GlobalParams.projectId,
      storageBucket: GlobalParams.storageBucket,
    ),
  );
  Bloc.observer = SimpleBlocObserver();
  await configureDependencies();
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
  );

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
      create: (context) => AppRouteBloc()..add(SigninEvent.fetch()),
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
