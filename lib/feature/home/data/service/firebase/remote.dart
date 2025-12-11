// import 'package:com.example.epbomi/core/data_process/request/request.dart';
// import 'package:com.example.epbomi/core/data_process/success.dart';
// import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
// import 'package:injectable/injectable.dart';
// import 'package:firebase_database/firebase_database.dart' as databaseRf;

// abstract class ImarchanService {
//   Future<FirebaseResult<String?>> createCompte(RequestAuthen params);
// }

// @LazySingleton(as: ImarchanService)
// class ImpleImarchantService implements ImarchanService {
//   ImpleImarchantService({required this.db});

//   final databaseRf.DatabaseReference db;

//   @override
//   Future<FirebaseResult<String?>> createCompte(RequestAuthen params) async {
//     try {
//       // 1) Construire l'objet Request
//       final request = Request<RequestAuthen>(
//         data: params.toJson(),
//         user: "",
//         serviceLibelle: 'serviceLibelle',
//       );

//       // 2) Créer une nouvelle entrée
//       final ref = db.push();

//       // 3) Sauvegarder dans Firebase (en convertissant en Map)
//       await ref.set(request.data);

//       // 4) Retourner le key généré
//       return FirebaseSuccess(ref.key);
//     } catch (e) {
//       return FirebaseError(e.toString());
//     }
//   }
// }
