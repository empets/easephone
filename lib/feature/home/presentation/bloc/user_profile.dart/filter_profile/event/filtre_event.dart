import 'package:freezed_annotation/freezed_annotation.dart';
part 'filtre_event.freezed.dart';

@freezed
abstract class FiltreEvent with _$FiltreEvent {
  factory FiltreEvent.filtre({
    required bool filterIsActif,
    required String adresse,
  }) = FilterFiltreEvent;
}
