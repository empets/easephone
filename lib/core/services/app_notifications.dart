// import 'package:flutter/material.dart';

// /// Centralized notification service for displaying SnackBars
// ///
// /// Provides consistent styling and behavior for success, error, and info messages.
// ///
// /// Example:
// /// ```dart
// /// AppNotifications.showSuccess(context, 'Paiement effectué avec succès');
// /// AppNotifications.showError(context, 'Une erreur est survenue');
// /// AppNotifications.showInfo(context, 'Veuillez vérifier votre connexion');
// /// ```
// class AppNotifications {
//   /// Show success notification with green background
//   static void showSuccess(BuildContext context, String message) {
//     _showSnackBar(
//       context,
//       message,
//       backgroundColor: .success,
//       icon: Icons.check_circle,
//     );
//   }

//   /// Show error notification with red background
//   static void showError(BuildContext context, String message) {
//     _showSnackBar(
//       context,
//       message,
//       backgroundColor: AppColors.error,
//       icon: Icons.error,
//     );
//   }

//   /// Show info notification with orange background
//   static void showInfo(BuildContext context, String message) {
//     _showSnackBar(
//       context,
//       message,
//       backgroundColor: AppColors.primaryOrange,
//       icon: Icons.info,
//     );
//   }

//   /// Show warning notification with amber background
//   static void showWarning(BuildContext context, String message) {
//     _showSnackBar(
//       context,
//       message,
//       backgroundColor: AppColors.warning,
//       icon: Icons.warning,
//     );
//   }

//   /// Internal method to show SnackBar with consistent styling
//   static void _showSnackBar(
//     BuildContext context,
//     String message, {
//     required Color backgroundColor,
//     required IconData icon,
//     Duration duration = const Duration(seconds: 3),
//   }) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Row(
//           children: [
//             Icon(icon, color: AppColors.white, size: 20),
//             const SizedBox(width: 12),
//             Expanded(
//               child: Text(
//                 message,
//                 style: const TextStyle(
//                   color: AppColors.white,
//                   fontSize: 14,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         backgroundColor: backgroundColor,
//         behavior: SnackBarBehavior.floating,
//         shape: RoundedRectangleBorder(
//           borderRadius: AppBorderRadius.small,
//         ),
//         duration: duration,
//         margin: const EdgeInsets.all(16),
//       ),
//     );
//   }
// }
