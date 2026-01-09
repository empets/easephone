import 'package:com.example.epbomi/gen/assets.gen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

/// AppBar personnalisée avec bouton retour et icônes d'actions
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.onBackPressed,
    this.onSearchPressed,
    this.onNotificationPressed,
    this.onHelpPressed,
    this.onProfilePressed,
    this.showNotificationBadge = false,
  });
  final VoidCallback? onBackPressed;
  final VoidCallback? onSearchPressed;
  final VoidCallback? onNotificationPressed;
  final VoidCallback? onHelpPressed;
  final VoidCallback? onProfilePressed;
  final bool showNotificationBadge;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColorName.backgroundIvory,
      elevation: 0,
      leading: const CustomLeading(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomLeading extends StatelessWidget {
  const CustomLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
              MyAssets.icons.iconArrowFelt.path,
              width: 13.w,
            ),
          ),
        ],
      ),
    );
  }
}
