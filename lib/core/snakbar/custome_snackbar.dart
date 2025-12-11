import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

/// Fonction générique pour afficher une snackbar personnalisée.
///
/// [context] : le BuildContext de la vue actuelle.
/// [message] : le texte à afficher.
/// [icon] : une icône optionnelle (ex: Icons.error, Icons.check_circle).
/// [color] : la couleur de fond de la snackbar.
/// [duration] : durée d’affichage (par défaut 3 secondes).
///

void showAppSnackBar(
  BuildContext context, {
  String? message,
  IconData? icon,
  IconData? iconRight,
  Color color = Colors.blue,
  String? imageIcon,
  Duration duration = const Duration(seconds: 3),
}) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 7.w, vertical: 3.h),
        behavior: SnackBarBehavior.floating,
        backgroundColor: color.withValues(alpha: 0.8),
        duration: duration,
        content: Row(
          children: [
            if (icon != null) ...[
              Icon(icon, color: Colors.white),
              SizedBox(width: 10.w),
            ],
            if (imageIcon != null && imageIcon.isNotEmpty) ...[
              SvgPicture.asset(imageIcon),
              SizedBox(width: 10.w),
            ],
            Expanded(
              child: Text(
                message ?? "",
                style: GoogleFonts.roboto(
                  fontSize: 12.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.4.sp,
                ),
              ),
            ),
            if (iconRight != null) ...[
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
                icon: Icon(iconRight, color: Colors.white),
              ),
            ],
          ],
        ),
      ),
    );
}
