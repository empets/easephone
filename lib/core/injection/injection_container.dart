import 'package:com.example.epbomi/core/injection/injection_container.config.dart';
import 'package:firebase_database/firebase_database.dart' as databaseReference;
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:injectable/injectable.dart';
//import 'injection.config.dart'; // généré

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();
Future<void> configureDependenciesTest() async {}

@module
abstract class InjectableModule {
  @lazySingleton
  databaseReference.DatabaseReference get userDb =>
      databaseReference.FirebaseDatabase.instance.ref();

  @lazySingleton
  http.Client get httpClient => InterceptedClient.build(
    interceptors: [
      // AuthInterceptor(getIt(), getIt()),
      // LoggingInterceptor(),
    ],
    client: http.Client(),
    // retryPolicy: ExpiredTokenRetryPolicy(getIt(), getIt()),
  );

  // @lazySingleton
  // FirebaseService get firebaseService => FirebaseService();

  // @lazySingleton
  // FlutterSecureStorage get prefs => const FlutterSecureStorage();

  // @lazySingleton
  // InternetConnectionChecker get network => InternetConnectionChecker.instance;

  // @lazySingleton
  // NetworkInfo get networkInfo => NetworkInfo();

  // //MapController

  // @lazySingleton
  // MapController get mapController => MapController();

  // @lazySingleton
  // Connectivity get connectivity => Connectivity();

  // @lazySingleton
  // Location get location => Location();

  // @lazySingleton
  // GoogleSignIn get googleSignIn => GoogleSignIn();

  // @lazySingleton
  // FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  // @lazySingleton
  // FirebaseMessagingService get firebaseMessagingService =>
  //     FirebaseMessagingService.instance;

  // @lazySingleton
  // DeviceInfoPlugin get deviceInfoPlugin => DeviceInfoPlugin();

  // @lazySingleton
  // FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;

  // @lazySingleton
  // ImagePicker get picker => ImagePicker();
}

abstract class Env {
  static const test = 'test';
  static const dev = 'dev';
  static const prod = 'prod';
}
