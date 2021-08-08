part of 'questionbank_bloc.dart';

@freezed
class QuestionbankState with _$QuestionbankState {
  const factory QuestionbankState.initial() = _Initial;
  const factory QuestionbankState.loading() = _Loading;
  const factory QuestionbankState.loadSuccess(
    List<QuestionBank>? questionList,
    Result? result,
    Option<Either<ResultFailure, Unit>>? failureOrSuccessOption,
    int? time,
  ) = _LoadSuccess;
}
