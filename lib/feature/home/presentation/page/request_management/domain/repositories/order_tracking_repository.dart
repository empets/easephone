import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/request_management/domain/entities/order_tracking_response.dart';
import 'package:dartz/dartz.dart';
// import 'package:ma_box_orange/core/error/failure.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/order_tracking_response.dart';

abstract class OrderTrackingRepository {
  Future<Either<Failure, OrderTrackingResponse>> getOrderTracking({
    required String dossierId,
  });
}
