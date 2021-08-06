import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model_test/domain/model_test/model_tests.dart';
import 'package:model_test/domain/model_test/value_objects.dart';
import 'package:model_test/domain/question_bank/value_objects.dart';
part 'question_bank.freezed.dart';

@freezed
abstract class QuestionBank with _$QuestionBank {
  const factory QuestionBank({
    @required QuestionId? questionId,
    @required QuestionStr? questionStr,
    @required QuestionOption1? questionOption1,
    @required QuestionOption2? questionOption2,
    @required QuestionOption3? questionOption3,
    @required QuestionOption4? questionOption4,
    @required QuestionOption5? questionOption5,
    @required QuestionCorrectAnswer? questionCorrectAnswer,
    @required ModelTest? modelTest,
  }) = _QuestionBank;

  factory QuestionBank.empty() => QuestionBank(
        questionId: QuestionId(0),
        questionStr: QuestionStr(''),
        questionOption1: QuestionOption1(''),
        questionOption2: QuestionOption2(''),
        questionOption3: QuestionOption3(''),
        questionOption4: QuestionOption4(''),
        questionOption5: QuestionOption5(''),
        questionCorrectAnswer: QuestionCorrectAnswer(''),
        modelTest: ModelTest(
          modelId: ModelId(0),
          examResultEndDateTime: ModelExamResultEndDateTime(''),
          modelCoverImage: ModelCoverImage(''),
          modelExamEndDateTime: ModelExamEndDateTime(''),
          modelExamResultDateTime: ModelExamResultDateTime(''),
          modelExamStartDateTime: ModelExamStartDateTime(''),
          modelExamTime: ModelExamTime(0),
          modelNegativeMarks: ModelNegativeMarks(0),
          modelPassMarks: ModelPassMarks(0),
          modelShortDescription: ModelShortDescription(''),
          modelStatus: ModelStatus(''),
          modelSubscription: ModelSubscription(''),
          modelTitle: ModelTitle(''),
          modelUrl: ModelUrl(''),
        ),
      );
}
