part of 'questionbank_bloc.dart';

@freezed
class QuestionbankEvent with _$QuestionbankEvent {
  const factory QuestionbankEvent.started(
    int? id,
  ) = _Started;
}
