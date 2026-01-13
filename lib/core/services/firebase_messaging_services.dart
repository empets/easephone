// // import 'dart:async';
// // import 'dart:convert';

// import 'dart:async';
// import 'dart:convert';
// import 'dart:math';

// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:logger/logger.dart';
// import 'package:ma_box_orange/gen/colors.gen.dart';

// Logger lo = Logger();
// const String navigationActionId = 'id_3';

// @pragma('vm:entry-point')
// Future<void> firebaseMessagingBackgroundHandler(
//   NotificationResponse notificationResponse,
// ) async {
//   lo.d('vm:entry-point');
//   print('notification(${notificationResponse.id}) action tapped: '
//       '${notificationResponse.actionId} with'
//       ' payload: ${notificationResponse.payload}');
//   if (notificationResponse.input?.isNotEmpty ?? false) {
//     // ignore: avoid_print
//     print(
//       'notification action tapped with input: ${notificationResponse.input}',
//     );
//   }
// }

// class ReceivedNotification {
//   ReceivedNotification({
//     required this.id,
//     required this.title,
//     required this.body,
//     required this.payload,
//   });

//   final int id;
//   final String? title;
//   final String? body;
//   final Map<String, dynamic>? payload;
// }

// class FirebaseMessagingService {
//   FirebaseMessagingService._();
//   static FirebaseMessagingService instance = FirebaseMessagingService._();

//   FirebaseMessaging firebaseMessagin = FirebaseMessaging.instance;

//   String? _payLoad;

//   Future<void> _createNotificationChannel() async {
//     await _localNotifications
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);
//   }

//   AndroidNotificationChannel channel = const AndroidNotificationChannel(
//     'high_importance_channel', // id
//     'High Importance Notifications', // title
//     description:
//         'This channel is used for important notifications.', // description
//     importance: Importance.high,
//   );

//   Future<void> showNotification(RemoteMessage data) async {
//     final rng = Random();

//     try {
//       await _localNotifications.show(
//         rng.nextInt(100),
//         data.notification?.title ?? 'Vous avez une nouvelle notification',
//         data.notification?.body ?? '',
//         NotificationDetails(
//           android: AndroidNotificationDetails(
//             channel.id,
//             channel.name,
//             channelDescription: channel.description,
//             importance: Importance.high,
//             icon: '@drawable/ic_notification',
//             // icon: MyAssets.images.logo.logo.path,
//             color: MyColorName.orange,
//           ),
//           iOS: const DarwinNotificationDetails(),
//         ),
//         payload: json.encode(data.data),
//       );
//     } catch (e) {
//       return;
//     }
//     return;
//   }

//   Future<void> setupFlutterNotifications() async {
//     final appLaunchDetails =
//         await _localNotifications.getNotificationAppLaunchDetails();

//     final initializationSettings = _getPlatformSettings();
//     await _localNotifications.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse:
//           (NotificationResponse notificationResponse) {
//         switch (notificationResponse.notificationResponseType) {
//           case NotificationResponseType.selectedNotification:
//             if (notificationResponse.payload != null) {
//               selectNotificationStream.add(notificationResponse.payload);
//             }
//             break;
//           case NotificationResponseType.selectedNotificationAction:
//             // if (notificationResponse.actionId == navigationActionId) {
//             if (notificationResponse.payload != null) {
//               selectNotificationStream.add(notificationResponse.payload);
//             }
//             // }
//             break;
//         }
//       },
//     );

//     await _createNotificationChannel();

//     await firebaseMessagin.setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );

//     if (appLaunchDetails != null && appLaunchDetails.didNotificationLaunchApp) {
//       if (appLaunchDetails.notificationResponse != null &&
//           appLaunchDetails.notificationResponse?.payload != null) {
//         _payLoad = appLaunchDetails.notificationResponse!.payload;
//       }
//     }
//   }

//   final FlutterLocalNotificationsPlugin _localNotifications =
//       FlutterLocalNotificationsPlugin();

//   final StreamController<ReceivedNotification>
//       didReceiveLocalNotificationStream =
//       StreamController<ReceivedNotification>.broadcast();

//   final StreamController<String?> selectNotificationStream =
//       StreamController<String?>.broadcast();

//   InitializationSettings _getPlatformSettings() {
//     const initializationSettingsAndroid =
//         AndroidInitializationSettings('@drawable/ic_notification');
//     const initializationSettingsIOS = DarwinInitializationSettings(

//         // onDidReceiveLocalNotification: onDidReceiveLocalNotification,
//         );
//     return const InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsIOS,
//     );
//   }

//   Future<dynamic> onDidReceiveLocalNotification(
//     int id,
//     String? title,
//     String? body,
//     String? payload,
//   ) async {
//     final receivedNotification = ReceivedNotification(
//       id: id,
//       title: title,
//       body: body,
//       payload:
//           payload != null ? json.decode(payload) as Map<String, dynamic> : {},
//     );

//     didReceiveLocalNotificationStream.add(
//       receivedNotification,
//     );
//   }
// }
