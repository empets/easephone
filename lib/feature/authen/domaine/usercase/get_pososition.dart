// import 'package:com.example.epbomi/core/data_process/failure.dart';
// import 'package:com.example.epbomi/core/usercase/usercase.dart';
// import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
// import 'package:com.example.epbomi/feature/authen/domaine/repositorie/I_repository_authen.dart';
// import 'package:dartz/dartz.dart';
// import 'package:location/location.dart';
// import 'package:injectable/injectable.dart';


// import 'package:equatable/equatable.dart';

// // @lazySingleton
// // class SearchLocationByLatLng implements UseCase<Coordonne, ParamsLatLng> {
// //   SearchLocationByLatLng(this.repository);

// //   final IRepositoryAuthen repository;
// //   @override
// //   Future<Either<Failure, Coordonne>> call(ParamsLatLng params) async {
// //     return repository.searchLocationByLatLng(params.lat, params.lon);
// //   }
// // }

// class ParamsLatLng extends Equatable {
//   const ParamsLatLng({required this.lat, required this.lon});
//   final double lat;
//   final double lon;

//   @override
//   List<Object> get props => [lat, lon];
// }




// @lazySingleton
// class CurrentLocation implements UseCase<LocationData?, NoParams> {
//   CurrentLocation(this.repository);

//   final IRepositoryAuthen repository;
//   @override
//   Future<Either<Failure, LocationData?>> call(NoParams params) async {
//     return repository.getLocation();
//   }
// }




