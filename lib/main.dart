import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/observer/bloc_observer.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/state/signin_state.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/onboarding.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:com.example.epbomi/router/app_route.dart';
import 'package:com.example.epbomi/router/bloc/app_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:google_fonts/google_fonts.dart';
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
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  late final Future<AppRoute> _routerFuture;

  final navigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
      final router = getIt<AppRoute>();
  final appRouteBloc = getIt<AppRouteBloc>(); 

  @override
  void initState() {
    _routerFuture = getIt.getAsync<AppRoute>();
    appRouteBloc.add(SigninEvent.googleAuthen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return BlocProvider.value(
          value: appRouteBloc,
          child: BlocListener<AppRouteBloc, SigninState>(
            listener: (context, state) {
              if (state.status.isFailure) {
                showAppSnackBar(
                  context,
                  iconRight: Icons.close,
                  message: 'Service momentanement indisponible',
                );
              }
            },
            child: FutureBuilder(
              future: _routerFuture,
              builder: (context, asyncSnapshot) {
                if (!asyncSnapshot.hasData) {
                  return const MaterialApp(
                    home: Scaffold(
                      body: Center(child: CircularProgressIndicator()),
                    ),
                  );
                }
                final router = asyncSnapshot.data!;
                return MaterialApp.router(
                  key: navigatorKey,
                  scaffoldMessengerKey: scaffoldMessengerKey,
                  locale: const Locale('fr', 'FR'), // Force la langue française
                  // supportedLocales: const [
                  //   Locale('fr', 'FR'),
                  // ],
                  // localizationsDelegates: GlobalMaterialLocalizations.delegates,
                  builder: (context, child) => Builder(
                    builder: (context) {
                      return MediaQuery(
                        data: MediaQuery.of(
                          context,
                        ).copyWith(textScaler: TextScaler.noScaling),
                        child: child ?? const SizedBox(),
                      );
                    },
                  ),
                  routerConfig: router,
                  debugShowCheckedModeBanner: false,
                  themeMode: ThemeMode.light,

                  theme: ThemeData.light().copyWith(
                    // useMaterial3: true,
                    primaryColor: MyColorName.black,
                    cardTheme: CardThemeData(
                      elevation: 0,
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(12),
                      //   side: const BorderSide(
                      //     color: AppColors.borderLight,
                      //     width: 1,
                      //   ),
                      // ),
                      // color: AppColors.white,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                    ),
                    textTheme: GoogleFonts.robotoTextTheme(
                      Theme.of(context).textTheme,
                    ),
                    colorScheme: ColorScheme.fromSeed(
                      seedColor: MyColorName.black,
                    ),
                    // extensions: <ThemeExtension<dynamic>>[
                    //   CustomHomeColor.homePageStyle,
                    //   CustomDecoration.decoSkeleton,
                    // ],
                  ),
                  supportedLocales: const [Locale('fr', 'FR')],
                  // localizationsDelegates: AppLocalizations.localizationsDelegates,
                  // supportedLocales: AppLocalizations.supportedLocales,
                  // home: const OverViewPage(),
                  // : const MainUbrisationProduction(),
                );
              },
            ),
          ),
        );
      },

      //
    );
  }
}
