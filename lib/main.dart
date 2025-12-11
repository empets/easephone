import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/observer/bloc_observer.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: OnboardingScreen(),
      //
    );
  }
}
