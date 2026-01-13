import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_compte_event.freezed.dart';

@freezed
class CreateCompteEvent with _$CreateCompteEvent {
  /// Changer le nom de la résidence
  const factory CreateCompteEvent.changeResidenceName(String name) =
      ChangeResidenceNameCreateCompteEvent;

  /// Changer la spécialité
  const factory CreateCompteEvent.changeSpecialite(String specialite) =
      ChangeSpecialiteCreateCompteEvent;

  /// Changer le téléphone
  const factory CreateCompteEvent.changeTelephone(String telephone) =
      ChangeTelephoneCreateCompteEvent;

  /// Changer l'adresse
  const factory CreateCompteEvent.changeAdresse(String adresse) =
      ChangeAdresseCreateCompteEvent;

  /// Changer latitude
  const factory CreateCompteEvent.changeLat(String lat) = ChangeLatCompteEvent;

  /// Changer longitude
  const factory CreateCompteEvent.changelong(String long) =
      ChangelongCompteEvent;

  /// Changer whatsapp
  const factory CreateCompteEvent.changeWhatsapp(String whatsapp) =
      ChangeWhatsappCompteEvent;

  /// Changer Facebook
  const factory CreateCompteEvent.changeFacbokLinck(String facebok) =
      ChangeFacbokLinckCompteEvent;

  /// Changer l'adresse
  const factory CreateCompteEvent.changeEmail(String email) =
      ChangeEmailCreateCompteEvent;

  /// Soumettre le formulaire
  const factory CreateCompteEvent.submit() = SubmitCreateCompteEvent;
}

@freezed
class CreateCompteHebEvent with _$CreateCompteHebEvent {
  factory CreateCompteHebEvent.changeRoomNumber(String roomNumber) =
      ChangeRoomNumberCreateCompteHebEvent;

  factory CreateCompteHebEvent.changeAverageBed(String averageBed) =
      ChangeAverageBedCreateCompteHebEvent;

  factory CreateCompteHebEvent.changeSelectedOption(String option) =
      ChangeSelectedOptionCreateCompteHebEvent;

  factory CreateCompteHebEvent.changeDescription(String description) =
      ChangeDescriptionCreateCompteHebEvent;
  factory CreateCompteHebEvent.submit() = SubmitCreateCompteHebEvent;
}

@freezed
abstract class CreateCompteSendImage with _$CreateCompteSendImage {
  factory CreateCompteSendImage.image(String file, {String? userId}) =
      ImageCreateCompteSendImage;
}
