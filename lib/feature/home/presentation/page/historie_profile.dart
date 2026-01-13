import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/navigator_widget/custome_app_bar.dart';
import 'package:com.example.epbomi/gen/assets.gen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class HistorieProfile extends StatefulWidget {
  const HistorieProfile({super.key});

  @override
  State<HistorieProfile> createState() => _HistorieProfileState();
}

class _HistorieProfileState extends State<HistorieProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColorName.backgroundIvory,
      appBar: CustomAppBar(),

      body: SafeArea(
        top: true,
        child: Container(
          color: MyColorName.backgroundIvory,
          padding: EdgeInsetsGeometry.symmetric(
            vertical: 12.h,
            horizontal: 10.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomeText(texte: 'Historique', texteSize: 18.h),
              SizedBox(height: 0.3.sh),
              Lottie.asset(MyAssets.icons.emptyData.path),
              Align(
                alignment: Alignment.center,
                child: CustomeText(
                  texteSize: 14.sp,
                  texte: "Aucune information disponible pour l'instant",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
