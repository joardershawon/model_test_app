import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model_test/domain/model_test/model_tests.dart';
import 'package:model_test/domain/model_test/value_objects.dart';
import 'package:model_test/domain/question_bank/question_bank.dart';
import 'package:model_test/domain/question_bank/value_objects.dart';
import 'package:model_test/infrastructure/model_test/model_test_dto.dart';

part 'question_bank_dto.freezed.dart';
part 'question_bank_dto.g.dart';

@freezed
abstract class QuestionBankDto implements _$QuestionBankDto {
  const QuestionBankDto._();
  const factory QuestionBankDto({
    @required int? id,
    @required String? question,
    @required String? option_1,
    @required String? option_2,
    @required String? option_3,
    @required String? option_4,
    @required String? option_5,
    @required String? correct_answer,
    @required ModelTestDto? model_test,
  }) = _QuestionBankDto;

  QuestionBank toDomain() {
    return QuestionBank(
      questionId: QuestionId(id ?? 0),
      questionStr: QuestionStr(question ?? ''),
      questionOption1: QuestionOption1(option_1 ?? ''),
      questionOption2: QuestionOption2(option_2 ?? ''),
      questionOption3: QuestionOption3(option_3 ?? ''),
      questionOption4: QuestionOption4(option_4 ?? ''),
      questionOption5: QuestionOption5(option_5 ?? ''),
      questionCorrectAnswer: QuestionCorrectAnswer(correct_answer),
      modelTest: ModelTest(
        examResultEndDateTime: ModelExamResultEndDateTime(
            model_test!.exam_result_end_date_time ?? ''),
        modelCoverImage: ModelCoverImage(model_test!.cover_image ?? ''),
        modelExamEndDateTime:
            ModelExamEndDateTime(model_test!.exam_end_date_time ?? ''),
        modelExamResultDateTime:
            ModelExamResultDateTime(model_test!.exam_result_date_time ?? ''),
        modelExamStartDateTime:
            ModelExamStartDateTime(model_test!.exam_start_date_time ?? ''),
        modelExamTime: ModelExamTime(model_test!.exam_time ?? 0),
        modelId: ModelId(model_test!.id ?? 0),
        modelNegativeMarks: ModelNegativeMarks(model_test!.negative_marks ?? 0),
        modelPassMarks: ModelPassMarks(model_test!.pass_marks ?? 0),
        modelShortDescription:
            ModelShortDescription(model_test!.short_description ?? ''),
        modelStatus: ModelStatus(model_test!.status ?? ''),
        modelSubscription: ModelSubscription(model_test!.subscription ?? ''),
        modelTitle: ModelTitle(model_test!.title ?? ''),
        modelUrl: ModelUrl(model_test!.url ?? ''),
      ),
    );
  }

  factory QuestionBankDto.fromJson(Map<String, dynamic>? json) =>
      _$QuestionBankDtoFromJson(json!);
}
