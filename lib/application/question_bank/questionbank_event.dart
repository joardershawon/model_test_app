part of 'questionbank_bloc.dart';

@freezed
class QuestionbankEvent with _$QuestionbankEvent {
  const factory QuestionbankEvent.started(int? id) = _Started;
  const factory QuestionbankEvent.submitPressed() = _SubmitPressed;
  const factory QuestionbankEvent.timerStarted(int? time) = _TimerStarted;
  const factory QuestionbankEvent.optionPressed(
    String? option,
    int? currentIndex,
  ) = _OptionPressed;
}
