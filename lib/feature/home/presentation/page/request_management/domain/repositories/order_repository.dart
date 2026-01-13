import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/request_management/domain/entities/order_response.dart';
import 'package:dartz/dartz.dart';
// import 'package:ma_box_orange/core/error/failure.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/order_response.dart';

/// Repository interface pour la création de commandes
abstract class OrderRepository {
  /// Crée une nouvelle commande
  /// Retourne Either<Failure, OrderResponse>
  Future<Either<Failure, OrderResponse>> createOrder({
    required String contact,
    required String nom,
    required String prenom,
    required String latitude,
    required String longitude,
    required String codeOffre,
  });
}
