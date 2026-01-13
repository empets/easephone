import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetService {
  final _controller = StreamController<bool>.broadcast();

  Stream<bool> get connectionStream => _controller.stream;

  InternetService() {
    Connectivity().onConnectivityChanged.listen((_) async {
      final hasInternet =
          await InternetConnectionChecker().hasConnection;
      _controller.add(hasInternet);
    });
  }

  void dispose() {
    _controller.close();
  }
}



