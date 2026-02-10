import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_file_event.freezed.dart';

@freezed
class CheckFileEvent with _$CheckFileEvent {
  factory CheckFileEvent.changeGetRecto(String cniRecto) =
      ChangeGetRectoCheckFileEvent;

  factory CheckFileEvent.changeGetVerso(String cniVeso) =
      ChangeGetVersoCheckFileEvent;
  factory CheckFileEvent.changeAttestAtion(String attestation) =
      ChangeAttestAtionCheckFileEvent;

  factory CheckFileEvent.submit() = SubmitCheckFileEvent;
}
