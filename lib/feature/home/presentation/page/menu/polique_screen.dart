import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/global_params/global_params.dart';
import 'package:com.example.epbomi/core/navigator_widget/custome_app_bar.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfidentialityPolitiqueScreen extends StatefulWidget {
  const ConfidentialityPolitiqueScreen({super.key});

  @override
  State<ConfidentialityPolitiqueScreen> createState() =>
      _ConfidentialityPolitiqueScreenState();
}

class _ConfidentialityPolitiqueScreenState
    extends State<ConfidentialityPolitiqueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColorName.backgroundIvory,
      appBar: CustomAppBar(),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Container(
            color: MyColorName.backgroundIvory,
            padding: EdgeInsetsGeometry.symmetric(
              vertical: 12.h,
              horizontal: 10.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomeText(
                  texte: 'Politique de confidentialité',
                  texteSize: 18.h,
                ),
                SizedBox(height: 10.h),

                CustomeText(
                  texte: GlobalParams.poliqueOfConfidentialite,
                  texteSize: 12.h,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
