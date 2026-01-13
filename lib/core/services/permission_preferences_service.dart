import 'package:shared_preferences/shared_preferences.dart';

/// Service pour gérer les préférences de permissions localement
class PermissionPreferencesService {
  static const String _locationPermissionKey = 'location_permission_always_allow';

  /// Sauvegarder que l'utilisateur a choisi "Toujours autoriser"
  Future<void> setAlwaysAllowLocation(bool alwaysAllow) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_locationPermissionKey, alwaysAllow);
  }

  /// Vérifier si l'utilisateur a choisi "Toujours autoriser"
  Future<bool> isLocationAlwaysAllowed() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_locationPermissionKey) ?? false;
  }

  /// Réinitialiser la préférence (utile pour les tests ou réglages)
  Future<void> resetLocationPermission() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_locationPermissionKey);
  }
}
