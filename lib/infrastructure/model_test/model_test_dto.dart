import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model_test/domain/model_test/model_tests.dart';
import 'package:model_test/domain/model_test/value_objects.dart';
part 'model_test_dto.freezed.dart';
part 'model_test_dto.g.dart';

@freezed
abstract class ModelTestDto implements _$ModelTestDto {
  const ModelTestDto._();
  const factory ModelTestDto({
    @required String? url,
    @required int? id,
    @required String? title,
    // ignore: non_constant_identifier_names
    @required String? short_description,
    // ignore: non_constant_identifier_names
    @required String? exam_start_date_time,
    // ignore: non_constant_identifier_names
    @required String? exam_end_date_time,
    // ignore: non_constant_identifier_names
    @required String? exam_result_date_time,
    // ignore: non_constant_identifier_names
    @required String? exam_result_end_date_time,
    // ignore: non_constant_identifier_names
    @required String? cover_image,
    // ignore: non_constant_identifier_names
    @required double? negative_marks,
    // ignore: non_constant_identifier_names
    @required String? subscription,
    // ignore: non_constant_identifier_names
    @required int? exam_time,
    // ignore: non_constant_identifier_names
    @required double? pass_marks,
    @required String? status,
  }) = _ModelTestDto;

  ModelTest toDomain() => ModelTest(
        modelUrl: ModelUrl(url ?? '[null]'),
        modelId: ModelId(id ?? 0),
        modelTitle: ModelTitle(title ?? '[null]'),
        modelShortDescription:
            ModelShortDescription(short_description ?? '[null]'),
        modelExamStartDateTime:
            ModelExamStartDateTime(exam_start_date_time ?? '[null]'),
        modelExamEndDateTime:
            ModelExamEndDateTime(exam_end_date_time ?? '[null]'),
        modelExamResultDateTime:
            ModelExamResultDateTime(exam_result_date_time ?? '[null]'),
        examResultEndDateTime:
            ModelExamResultEndDateTime(exam_result_end_date_time ?? '[null]'),
        modelCoverImage: ModelCoverImage(cover_image ?? '[null]'),
        modelNegativeMarks: ModelNegativeMarks(negative_marks ?? 0),
        modelSubscription: ModelSubscription(subscription ?? '[null]'),
        modelExamTime: ModelExamTime(exam_time ?? 0),
        modelPassMarks: ModelPassMarks(pass_marks ?? 0),
        modelStatus: ModelStatus(status ?? '[null]'),
      );

  factory ModelTestDto.fromJson(Map<String, dynamic>? json) =>
      _$ModelTestDtoFromJson(json!);
}
