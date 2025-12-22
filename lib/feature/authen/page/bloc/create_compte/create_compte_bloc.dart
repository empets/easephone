import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:com.example.epbomi/core/extension/extensions.dart';
import 'package:com.example.epbomi/core/extension/extension_form.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/create_compte_herb_usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/create_compte_usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/event/create_compte_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/state/create_compte_state.dart';
import 'package:formz/formz.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateCompteBloc extends Bloc<CreateCompteEvent, CreateCompteState> {
  CreateCompteBloc({required this.comptemarchantUsercase})
    : super(CreateCompteState.initial()) {
    on<CreateCompteEvent>(_onEvent);
  }

  final CreateComptemarchantUsercase comptemarchantUsercase;

  void _onEvent(
    CreateCompteEvent event,
    Emitter<CreateCompteState> emit,
  ) async {
    switch (event) {
      case ChangeResidenceNameCreateCompteEvent(:final name):
        emit(
          state.copyWith(
            nomResidence: TextFormz.dirty(name),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              TextFormz.dirty(name),
              state.specialite,
              state.telephone,
              state.adresse,
              state.lat,
              state.long,
              state.whatsapp,
              state.facebok,
              state.email
            ]),
          ),
        );
        break;

      case ChangeSpecialiteCreateCompteEvent(:final specialite):
        emit(
          state.copyWith(
            specialite: TextFormz.dirty(specialite),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              TextFormz.dirty(specialite),
              state.nomResidence,
              state.telephone,
              state.adresse,
              state.lat,
              state.long,
              state.whatsapp,
              state.facebok,
              state.email
            ]),
          ),
        );
        break;

      case ChangeTelephoneCreateCompteEvent(:final telephone):
        emit(
          state.copyWith(
            telephone: TextFormz.dirty(telephone),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              TextFormz.dirty(telephone),
              state.nomResidence,
              state.specialite,
              state.adresse,
              state.lat,
              state.long,
              state.whatsapp,
              state.facebok,
              state.email
            ]),
          ),
        );
        break;

      case ChangeAdresseCreateCompteEvent(:final adresse):
        emit(
          state.copyWith(
            adresse: TextFormz.dirty(adresse),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              TextFormz.dirty(adresse),
              state.nomResidence,
              state.specialite,
              state.telephone,
              state.lat,
              state.long,
              state.whatsapp,
              state.facebok,
              state.email
            ]),
          ),
        );
        break;

      case ChangeLatCompteEvent(:final lat):
        emit(
          state.copyWith(
            lat: TextFormz.dirty(lat),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              TextFormz.dirty(lat),
              state.adresse,
              state.nomResidence,
              state.specialite,
              state.telephone,
              state.long,
              state.whatsapp,
              state.facebok,
              state.email
            ]),
          ),
        );
        break;
        
        case ChangelongCompteEvent(:final long):
        emit(
          state.copyWith(
            long: TextFormz.dirty(long),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              TextFormz.dirty(long),
              state.lat,
              state.adresse,
              state.nomResidence,
              state.specialite,
              state.telephone,
              state.whatsapp,
              state.facebok,
              state.email
            ]),
          ),
        );
        break;


       case ChangeWhatsappCompteEvent(:final whatsapp):
        emit(
          state.copyWith(
            whatsapp: TextFormz.dirty(whatsapp),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              TextFormz.dirty(whatsapp),
              state.long,
              state.lat,
              state.adresse,
              state.nomResidence,
              state.specialite,
              state.telephone,
              state.facebok,
              state.email
            ]),
          ),
        );
        break;

       case ChangeFacbokLinckCompteEvent(:final facebok):
        emit(
          state.copyWith(
            facebok: TextFormz.dirty(facebok),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              TextFormz.dirty(facebok),
              state.whatsapp,
              state.long,
              state.lat,
              state.adresse,
              state.nomResidence,
              state.specialite,
              state.telephone,
              state.email
            ]),
          ),
        );
        break;

      case ChangeEmailCreateCompteEvent(:final email):
        emit(
          state.copyWith(
            email: TextFormz.dirty(email),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              TextFormz.dirty(email),
              state.facebok,
              state.whatsapp,
              state.long,
              state.lat,
              state.adresse,
              state.nomResidence,
              state.specialite,
              state.telephone,
            
            ]),
          ),
        );
        break;
      
      case SubmitCreateCompteEvent():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await Future.delayed(Duration(seconds: 3));

          final sharedPreferences = await SharedPreferences.getInstance();
          final localUserSection = sharedPreferences.getString('user_section');

          final response = await comptemarchantUsercase.call(
            RequestCreateCompteHomeInformation(
              adresse: state.adresse.value,
              name: state.nomResidence.value,
              specialite: state.specialite.value,
              telephone: state.telephone.value,
              email: state.email.value,
              autherKey: localUserSection,
              formOne: 'success',
              lat: state.lat.value,
              long: state.long.value,
              whatsappContact: state.whatsapp.value,
              facebookLinck: state.facebok.value,
              
            ),
          );

          emit(
            response.fold(
              (l) => state.copyWith(
                errorMessage: l.message.getOrEmpty(),
                status: FormzSubmissionStatus.failure,
              ),
              (r) => state.copyWith(status: FormzSubmissionStatus.success),
            ),
          );
        }

        break;
    }
  }
}

class CreateCompteHBloc
    extends Bloc<CreateCompteHebEvent, CreateCompteHbState> {
  CreateCompteHBloc({required this.createComptHebUsercase})
    : super(CreateCompteHbState.initial()) {
    on<CreateCompteHebEvent>(updateCompte);
  }

  final CreateComptHebUsercase createComptHebUsercase;
  Future<void> updateCompte(
    CreateCompteHebEvent event,
    Emitter<CreateCompteHbState> emit,
  ) async {
    switch (event) {
      case ChangeRoomNumberCreateCompteHebEvent(:final roomNumber):
        emit(
          state.copyWith(
            roomNumber: TextFormz.dirty(roomNumber),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              TextFormz.dirty(roomNumber),
              state.averageBed,
              state.selectedOption,
              state.description,
            ]),
          ),
        );
        break;

      case ChangeAverageBedCreateCompteHebEvent(:final averageBed):
        emit(
          state.copyWith(
            averageBed: TextFormz.dirty(averageBed),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              state.roomNumber,
              TextFormz.dirty(averageBed),
              state.selectedOption,
              state.description,
            ]),
          ),
        );
        break;

      case ChangeSelectedOptionCreateCompteHebEvent(:final option):
        emit(
          state.copyWith(
            selectedOption: TextFormz.dirty(option),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              state.roomNumber,
              state.averageBed,
              TextFormz.dirty(option),
              state.description,
            ]),
          ),
        );
        break;

      case ChangeDescriptionCreateCompteHebEvent(:final description):
        emit(
          state.copyWith(
            description: TextFormz.dirty(description),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              state.roomNumber,
              state.averageBed,
              state.selectedOption,
              TextFormz.dirty(description),
            ]),
          ),
        );
        break;

      case SubmitCreateCompteHebEvent():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await Future.delayed(Duration(seconds: 4));

          final response = await createComptHebUsercase.call(
            RequestCreateCompteHeber(
              averageBed: state.averageBed.value,
              roomNumber: state.roomNumber.value,
              option: state.selectedOption.value,
              description: state.description.value,
              formTwo: 'success'
            ),
          );

          log(':::::::::::: $response');

          emit(
            response.fold(
              (l) => state.copyWith(
                errorMessage: l.message.getOrEmpty(),
                status: FormzSubmissionStatus.failure,
              ),
              (r) => state.copyWith(status: FormzSubmissionStatus.success),
            ),
          );
        }

        break;
    }
  }
}
