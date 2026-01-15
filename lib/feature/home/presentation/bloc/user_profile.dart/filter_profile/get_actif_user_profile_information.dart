import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/core/usercase/usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/get_actif_compte_information_usercase.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/user_profile.dart/filter_profile/event/filtre_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetActifUserInformationBloc extends Bloc<FiltreEvent, ApiState<List<ActiveUserProfile>>> {
  GetActifUserInformationBloc({required this.getActifCompteInformationUsercase})
    : super(ApiState<List<ActiveUserProfile>>.initial()) {
    on<FiltreEvent>(getUser);
  }

  GetActifCompteInformationUsercase getActifCompteInformationUsercase;
  Future<void> getUser(
    FiltreEvent event,
    Emitter<ApiState<List<ActiveUserProfile>>> emit,
  ) async {
    switch (event) {
      case FilterFiltreEvent(: final bool filterIsActif,: final String adresse):

      if(filterIsActif){
        emit(ApiState<List<ActiveUserProfile>>.load());
        final response = await getActifCompteInformationUsercase.call(
       RequestFilterProfile(adresse: adresse, filterIsActif: filterIsActif) );

        emit(
          response.fold((l) => FailedState(l.message), (r) => SuccessState(r)),
        );

      }
      else{
          emit(ApiState<List<ActiveUserProfile>>.load());
        final response = await getActifCompteInformationUsercase.call(
        RequestFilterProfile(adresse: "", filterIsActif: false) );

        emit(
          response.fold((l) => FailedState(l.message), (r) => SuccessState(r)),
        );

      }


        break;
    }
  }
}
